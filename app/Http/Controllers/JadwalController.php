<?php

namespace App\Http\Controllers;

use Auth;
use App\Jadwal;
use App\Hari;
use App\Kelas;
use App\Guru;
use App\Siswa;
use App\Ruang;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
use PDF;
use App\Exports\JadwalExport;
use App\generateData;
use App\Imports\JadwalImport;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Controllers\Controller;
use App\JamAjar;
use App\Mapel;
use Illuminate\Support\Facades\DB;

class JadwalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hari = Hari::all();
        $kelas = Kelas::OrderBy('nama_kelas', 'asc')->get();
        $ruang = Ruang::all();
        $guru = Guru::OrderBy('kode', 'asc')->get();
        return view('admin.jadwal.index', compact('hari', 'kelas', 'guru', 'ruang'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'hari_id' => 'required',
            'kelas_id' => 'required',
            'guru_id' => 'required',
            'jam_mulai' => 'required',
            'jam_selesai' => 'required',
            'ruang_id' => 'required',
        ]);

        $guru = Guru::findorfail($request->guru_id);
        Jadwal::updateOrCreate(
            [
                'id' => $request->jadwal_id
            ],
            [
                'hari_id' => $request->hari_id,
                'kelas_id' => $request->kelas_id,
                'mapel_id' => $guru->mapel_id,
                'guru_id' => $request->guru_id,
                'jam_mulai' => $request->jam_mulai,
                'jam_selesai' => $request->jam_selesai,
                'ruang_id' => $request->ruang_id,
            ]
        );

        return redirect()->back()->with('success', 'Data jadwal berhasil diperbarui!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $id = Crypt::decrypt($id);
        $kelas = Kelas::findorfail($id);
        $jadwal = Jadwal::OrderBy('hari_id', 'asc')->OrderBy('jam_mulai', 'asc')->where('kelas_id', $id)->get();
        return view('admin.jadwal.show', compact('jadwal', 'kelas'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $id = Crypt::decrypt($id);
        $jadwal = Jadwal::findorfail($id);
        $hari = Hari::all();
        $kelas = Kelas::all();
        $ruang = Ruang::all();
        $guru = Guru::OrderBy('kode', 'asc')->get();
        return view('admin.jadwal.edit', compact('jadwal', 'hari', 'kelas', 'guru', 'ruang'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $jadwal = Jadwal::findorfail($id);
        $jadwal->delete();

        return redirect()->back()->with('warning', 'Data jadwal berhasil dihapus! (Silahkan cek trash data jadwal)');
    }

    public function trash()
    {
        $jadwal = Jadwal::onlyTrashed()->get();
        return view('admin.jadwal.trash', compact('jadwal'));
    }

    public function restore($id)
    {
        $id = Crypt::decrypt($id);
        $jadwal = Jadwal::withTrashed()->findorfail($id);
        $jadwal->restore();
        return redirect()->back()->with('info', 'Data jadwal berhasil direstore! (Silahkan cek data jadwal)');
    }

    public function kill($id)
    {
        $jadwal = Jadwal::withTrashed()->findorfail($id);
        $jadwal->forceDelete();
        return redirect()->back()->with('success', 'Data jadwal berhasil dihapus secara permanent');
    }

    public function view(Request $request)
    {
        $jadwal = Jadwal::OrderBy('hari_id', 'asc')->OrderBy('jam_mulai', 'asc')->where('kelas_id', $request->id)->get();
        foreach ($jadwal as $val) {
            $newForm[] = array(
                'hari' => $val->hari->nama_hari,
                'mapel' => $val->mapel->nama_mapel,
                'kelas' => $val->kelas->nama_kelas,
                'guru' => $val->guru->nama_guru,
                'jam_mulai' => $val->jam_mulai,
                'jam_selesai' => $val->jam_selesai,
                'ruang' => $val->ruang->nama_ruang,
            );
        }
        return response()->json($newForm);
    }

    public function jadwalSekarang(Request $request)
    {
        $jadwal = Jadwal::OrderBy('jam_mulai')->OrderBy('jam_selesai')->OrderBy('kelas_id')->where('hari_id', $request->hari)->where('jam_mulai', '<=', $request->jam)->where('jam_selesai', '>=', $request->jam)->get();
        foreach ($jadwal as $val) {
            $newForm[] = array(
                'mapel' => $val->mapel->nama_mapel,
                'kelas' => $val->kelas->nama_kelas,
                'guru' => $val->guru->nama_guru,
                'jam_mulai' => $val->jam_mulai,
                'jam_selesai' => $val->jam_selesai,
                'ruang' => $val->ruang->nama_ruang,
                'ket' => $val->absen($val->guru_id),
            );
        }
        return response()->json($newForm);
    }

    public function cetak_pdf(Request $request)
    {
        $jadwal = Jadwal::OrderBy('hari_id', 'asc')->OrderBy('jam_mulai', 'asc')->where('kelas_id', $request->id)->get();
        $kelas = Kelas::findorfail($request->id);
        $pdf = PDF::loadView('jadwal-pdf', ['jadwal' => $jadwal, 'kelas' => $kelas]);
        return $pdf->stream();
        // return $pdf->stream('jadwal-pdf.pdf');
    }

    public function guru()
    {
        $guru = Guru::where('id_card', Auth::user()->id_card)->first();
        $jadwal = Jadwal::orderBy('hari_id')->OrderBy('jam_mulai')->where('guru_id', $guru->id)->get();
        return view('guru.jadwal', compact('jadwal', 'guru'));
    }

    public function siswa()
    {
        $siswa = Siswa::where('no_induk', Auth::user()->no_induk)->first();
        $kelas = Kelas::findorfail($siswa->kelas_id);
        $jadwal = Jadwal::orderBy('hari_id')->OrderBy('jam_mulai')->where('kelas_id', $kelas->id)->get();
        return view('siswa.jadwal', compact('jadwal', 'kelas', 'siswa'));
    }

    public function export_excel()
    {
        return Excel::download(new JadwalExport, 'jadwal.xlsx');
    }

    public function import_excel(Request $request)
    {
        $this->validate($request, [
            'file' => 'required|mimes:csv,xls,xlsx'
        ]);
        $file = $request->file('file');
        $nama_file = rand() . $file->getClientOriginalName();
        $file->move('file_jadwal', $nama_file);
        Excel::import(new JadwalImport, public_path('/file_jadwal/' . $nama_file));
        return redirect()->back()->with('success', 'Data Siswa Berhasil Diimport!');
    }

    public function deleteAll()
    {
        $jadwal = Jadwal::all();
        if ($jadwal->count() >= 1) {
            Jadwal::whereNotNull('id')->delete();
            Jadwal::withTrashed()->whereNotNull('id')->forceDelete();
            return redirect()->back()->with('success', 'Data table jadwal berhasil dihapus!');
        } else {
            return redirect()->back()->with('warning', 'Data table jadwal kosong!');
        }
    }

    public function submitGenerate()
    {
        $Kelas = (array) Kelas::all()->toArray();
        $Hari = (array) Hari::all()->toArray();
        $JamAjar = (array) JamAjar::all()->toArray();

        $Guru = (array) Guru::select('mapel.*', 'guru.*', 'mapel.id as mapel_id')->join('mapel', 'mapel.id', '=', 'guru.mapel_id')->get()->toArray();

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

        // delete table jadwal
        DB::table('jadwal')->truncate();
        DB::table('generator_data')->truncate();
        $result = $this->generateSchedule($Kelas, $Hari, $JamAjar, $Guru);
        $Result = new generateData();
        $Result->data = json_encode($result);

        $Result->save();

        return redirect()->back()->with('success', 'Jadwal berhasil digenerate!');
    }
    // ramdan
    public function generate()
    {
        $result = generateData::latest()->first();

        $Guru = Guru::get()->toArray();
        $Mapel = Mapel::get()->toArray();
        $Mapel = array_map(function ($obj) {
            $obj['code'] = $this->numberToAlphabet($obj['id']);
            return $obj;
        }, $Mapel);
        $Hari = Hari::get()->toArray();
        $JamAjar =  JamAjar::get()->toArray();
        $Hari = array_map(function ($obj) use ($JamAjar) {
            $obj['jam_ajar'] = $JamAjar;
            return $obj;
        }, $Hari);

        return view('admin.jadwal.generate', [
            'result' => isset($result->data) ? $this->addStaticData($result->data) ?? [] : [],
            'gurus' => $Guru,
            'mapels' => $Mapel,
            'haris' => $Hari
        ]);
    }

    function generateSchedule($Kelas, $Hari, $JamAjar, $Guru)
    {
        $schedule = [];
        foreach ($Kelas as $kelas) {
            $schedule[$kelas['nama']] = [];
            $teacherLessonCount = [];
            $teacherAvailability = [];

            foreach ($Guru as $guru) {
                $teacherLessonCount[$guru['nama']] = 0;
                $teacherAvailability[$guru['nama']] = array_fill_keys(array_column($JamAjar, 'date'), $guru['maxInOneday']);
            }

            foreach ($Hari as $hari) {
                $schedule[$kelas['nama']][$hari['nama']] = [];
                foreach ($JamAjar as $x) {
                    $availableTeachersBySlot = [];
                    foreach ($Guru as $guru) {

                        if ($teacherLessonCount[$guru['nama']] < $guru['limit'] && $teacherAvailability[$guru['nama']][$x['date']] > 0) {
                            $conflict = false;
                            foreach ($schedule as $classSchedule) {
                                if (!empty($classSchedule[$hari['nama']])) {
                                    foreach ($classSchedule[$hari['nama']] as $lesson) {
                                        if ($lesson['jamAjar'] === $x['date'] && $lesson['guru'] === $guru['nama']) {
                                            $conflict = true;
                                            break;
                                        }
                                    }
                                }
                            }
                            if (!$conflict) {
                                $availableTeachersBySlot[] = $guru;
                            }
                        }
                    }

                    $teacher = count($availableTeachersBySlot) > 0 ? $availableTeachersBySlot[array_rand($availableTeachersBySlot)] : null;
                    if ($teacher) {
                        $teacherLessonCount[$teacher['nama']] += 1;
                        $teacherAvailability[$teacher['nama']][$x['date']] -= 1;
                    }
                    $waktu_terpisah = explode('-',  $x['date']);
                    $jam_mulai = $waktu_terpisah[0];
                    $jam_selesai = $waktu_terpisah[1];
                    DB::table('jadwal')->insert([
                        'hari_id' => $hari['id'],
                        'kelas_id' =>  $kelas['id'],
                        'mapel_id' => $teacher['mapel_id'],
                        'guru_id' => $teacher['id'],
                        'jam_mulai' => $jam_mulai,
                        'jam_selesai' => $jam_selesai,
                    ]);

                    $schedule[$kelas['nama']][$hari['nama']][] = [
                        'jamAjar' => $x['date'],
                        'guru' => $teacher ? $teacher['nama'] : null,
                        'namaMapel' => $teacher ? $teacher['nama_mapel'] : null,
                        'kelompok' => $teacher ? $teacher['kelompok'] : null,
                        'code' => $teacher ? $teacher['id'] . $this->numberToAlphabet($teacher['mapel_id']) : null,
                    ];
                }
            }
        }

        return $schedule;
    }

    function numberToAlphabet($number)
    {
        $alphabet = range('a', 'z');
        $index = ($number - 1) % 26;
        return $alphabet[$index];
    }

    function addStaticData(string $result): array
    {
        $data = json_decode($result, true);
    
        $newElementMonday = [
            "jamAjar" => "07:00-08:00",
            "guru" => "New Guru",
            "namaMapel" => "New Mapel",
            "kelompok" => "New Kelompok",
            "code" => "Apel Pagi & Upacara Bendera"
        ];
    
        $newElementOtherDays = [
            "jamAjar" => "07:00-07:15",
            "guru" => "New Guru",
            "namaMapel" => "New Mapel",
            "kelompok" => "New Kelompok",
            "code" => "Apel Pagi"
        ];
    
        $newElementFriday = [
            "jamAjar" => "07:00-07:20",
            "guru" => "New Guru",
            "namaMapel" => "New Mapel",
            "kelompok" => "New Kelompok",
            "code" => "Apel Pagi dan Kultum"
        ];
    
        $newElementBreakMonday = [
            "jamAjar" => "11:00-11:15",
            "guru" => "New Guru 2",
            "namaMapel" => "New Mapel 2",
            "kelompok" => "New Kelompok 2",
            "code" => "Istirahat"
        ];
    
        $newElementBreak = [
            "jamAjar" => "10:15-10:30",
            "guru" => "New Guru 2",
            "namaMapel" => "New Mapel 2",
            "kelompok" => "New Kelompok 2",
            "code" => "Istirahat"
        ];
    
        $newElementBreakFriday = [
            "jamAjar" => "08:50-09:10",
            "guru" => "New Guru 2",
            "namaMapel" => "New Mapel 2",
            "kelompok" => "New Kelompok 2",
            "code" => "Istirahat"
        ];
    
        foreach ($data as &$kelas) {
            foreach ($kelas as $dayName => &$hari) {
                // Menghapus data jam pada hari Sabtu untuk waktu tertentu
                if ($dayName === 'Sabtu') {
                    $hari = array_filter($hari, function ($item) {
                        return $item['jamAjar'] !== '12:00-12:45' && $item['jamAjar'] !== '12:45-13:30';
                    });
                    $hari = array_values($hari);
                }
                if ($dayName === "Jum'at") {
                    $hari = array_filter($hari, function ($item) {
                        return $item['jamAjar'] !== '11:15-12:00' && $item['jamAjar'] !== '12:00-12:45' && $item['jamAjar'] !== '12:45-13:30';
                    });
                    $hari = array_values($hari);
                }
                // Penyesuaian jadwal untuk Senin
                if ($dayName === 'Senin') {
                    $hari[0]['jamAjar'] = "08:00-08:45";
                    $hari[1]['jamAjar'] = "08:45-09:30";
                    $hari[2]['jamAjar'] = "09:30-10:15";
                    $hari[3]['jamAjar'] = "10:15-11:00";
                    $hari[4]['jamAjar'] = "11:15-12:00";
                    $hari[5]['jamAjar'] = "12:00-12:45";
                    $hari[6]['jamAjar'] = "12:45-13:30";
                    $hari[7]['jamAjar'] = "13:30-14:10";
                    array_unshift($hari, $newElementMonday);
                } else if ($dayName === "Jum'at") {
                    $hari[0]['jamAjar'] = "07:20-08:05";
                    $hari[1]['jamAjar'] = "08:05-08:50";
                    $hari[2]['jamAjar'] = "09:10-09:55";
                    $hari[3]['jamAjar'] = "09:55-11:00";
                    if ($dayName === "Jum'at") {
                        $hari = array_filter($hari, function ($item) {
                            return $item['jamAjar'] !== '10:30-11:15';
                        });
                        $hari = array_values($hari);
                    }

                    array_unshift($hari, $newElementFriday);
                } else {
                    array_unshift($hari, $newElementOtherDays);
                }
    
                // Menambahkan elemen istirahat untuk setiap hari
                if ($dayName === 'Senin') {
                    array_splice($hari, 5, 0, [$newElementBreakMonday]);
                } else if ($dayName === "Jum'at") {
                    array_splice($hari, 3, 0, [$newElementBreakFriday]);
                } else {
                    array_splice($hari, 5, 0, [$newElementBreak]);
                }
            }
        }
        // dd($data);
        return $data;
    }
    
}
