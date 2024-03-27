<?php

namespace App\Http\Controllers;

use App\Jadwal;
use App\Guru;
use App\Hari;
use App\JamAjar;
use App\Kehadiran;
use App\Kelas;
use App\Siswa;
use App\Mapel;
use App\User;
use App\Paket;
use App\Pengumuman;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['auth']);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $hari = date('w');
        $jam = date('H:i');
        $jadwal = Jadwal::OrderBy('jam_mulai')->OrderBy('jam_selesai')->OrderBy('kelas_id')->where('hari_id', $hari)->where('jam_mulai', '<=', $jam)->where('jam_selesai', '>=', $jam)->get();
        $pengumuman = Pengumuman::first();
        $kehadiran = Kehadiran::all();
        return view('home', compact('jadwal', 'pengumuman', 'kehadiran'));
    }

    public function admin()
    {
        $jadwal = Jadwal::count();
        $guru = Guru::count();
        $gurulk = Guru::where('jk', 'L')->count();
        $gurupr = Guru::where('jk', 'P')->count();
        $siswa = Siswa::count();
        $siswalk = Siswa::where('jk', 'L')->count();
        $siswapr = Siswa::where('jk', 'P')->count();
        $kelas = Kelas::count();
        $bkp = Kelas::where('paket_id', '1')->count();
        $dpib = Kelas::where('paket_id', '2')->count();
        $ei = Kelas::where('paket_id', '3')->count();
        $oi = Kelas::where('paket_id', '4')->count();
        $tbsm = Kelas::where('paket_id', '6')->count();
        $rpl = Kelas::where('paket_id', '7')->count();
        $tpm = Kelas::where('paket_id', '5')->count();
        $las = Kelas::where('paket_id', '8')->count();
        $mapel = Mapel::count();
        $user = User::count();
        $paket = Paket::all();
        return view('admin.index', compact(
            'jadwal',
            'guru',
            'gurulk',
            'gurupr',
            'siswalk',
            'siswapr',
            'siswa',
            'kelas',
            'bkp',
            'dpib',
            'ei',
            'oi',
            'tbsm',
            'rpl',
            'tpm',
            'las',
            'mapel',
            'user',
            'paket'
        ));
    }

    public function generate()
    {
        $Kelas = (array) Kelas::all()->toArray();
        $Hari = (array) Hari::all()->toArray();
        $JamAjar = (array) JamAjar::all()->toArray();
        $Guru = (array) Guru::join('mapel', 'mapel.id', '=', 'guru.mapel_id')->get()->toArray();

        $Hari = array_map(function ($obj) {
            $obj['nama'] = $obj['nama_hari'];
            return $obj;
        }, $Hari);

        $Kelas = array_map(function ($obj) {
            $obj['nama'] = $obj['nama_kelas'];
            return $obj;
        }, $Kelas);

        $Guru = array_map(function ($obj) {
            $obj['nama'] = $obj['nama_guru'];
            $obj['limit'] = $obj['hour_weekly'];
            $obj['maxInOneday'] = $obj['max_session'];
            return $obj;
        }, $Guru);



        $result = $this->generateSchedule($Kelas, $Hari, $JamAjar, $Guru);


        foreach ($Guru as &$guru) {
            $guru['teaching'] = 0;
            foreach ($result['schedule'] as $kelas => $hari) {
                foreach ($hari as $hari => $lessonSet) {
                    $guru['teaching'] += count(array_filter($lessonSet, function ($lesson) use ($guru) {
                        return $lesson['guru'] == $guru['nama'];
                    }));
                }
            }
        }

        echo '<pre>;';
        print_r($result['schedule']);
        echo '</pre>;';
        die();
    }

    function generateSchedule($Kelas, $Hari, $JamAjar, $Guru)
    {
        $schedule = [];
        $teacherLessonCount = [];
        foreach ($Guru as $guru) {
            $teacherLessonCount[$guru['nama']] = 0;
        }

        foreach ($Kelas as $kelas) {
            $schedule[$kelas['nama']] = [];
            foreach ($Hari as $hari) {
                $schedule[$kelas['nama']][$hari['nama']] = [];
                foreach ($JamAjar as $jamAjar) {
                    // Check if any teacher has already reached the limit for the day
                    $availableTeachers = array_filter($Guru, function ($guru) use ($schedule, $kelas, $hari, $teacherLessonCount) {
                        $dailyLessons = 0;
                        foreach ($schedule as $class => $days) {
                            foreach ($days as $day => $lessons) {
                                foreach ($lessons as $lesson) {
                                    if ($lesson['guru'] === $guru['nama'] && $day === $hari['nama']) {
                                        $dailyLessons++;
                                    }
                                }
                            }
                        }
                        return $dailyLessons < $guru['maxInOneday'] && $teacherLessonCount[$guru['nama']] < $guru['limit'] && is_array($guru) && isset($guru['nama']);
                    });

                    $teacher = count($availableTeachers) > 0 ? $availableTeachers[array_rand($availableTeachers)] : null;
                    if ($teacher) {
                        $teacherLessonCount[$teacher['nama']] += 1;
                    }

                    $schedule[$kelas['nama']][$hari['nama']][] =
                        [
                            'jamAjar' => $jamAjar['date'],
                            'guru' => $teacher ? $teacher['nama'] : null,
                            'namaMapel' => $teacher ? $teacher['nama_mapel'] : null,
                        ];
                }
            }
        }

        return ['schedule' => $schedule, 'teacherLessonCount' => $teacherLessonCount];
    }
}
