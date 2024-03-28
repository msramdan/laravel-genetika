@extends('template_backend.home')
@section('heading', 'Generate Jadwal')
@section('page')
    <li class="breadcrumb-item active">Generate Jadwal</li>
@endsection
@section('content')

    <div class="col-md-12">
        <div class="card">
            <div class="card-body">
                <button id="generate" class="btn btn-primary">Generate Jadwal</button>

                <div class="row mt-4">
                    <div class="col-md-4">
                        <table class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Nama Guru</th>
                                    <th>Kode</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($gurus as $guru)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $guru['nama_guru'] }}</td>
                                        <td>{{ $guru['id'] }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-4">
                        <table class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Nama Mapel</th>
                                    <th>Kode</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($mapels as $mapel)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $mapel['nama_mapel'] }}</td>
                                        <td>{{ $mapel['code'] }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="col-md-12">
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Hari</th>
                                <th>Waktu</th>
                                @foreach ($result as $key => $value)
                                    <th>{{ $key }}</th>
                                @endforeach
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $prevNamaHari = '';
                            @endphp

                            @foreach ($haris as $hari)
                                @php
                                    $rowspan = $hari['nama_hari'] !== $prevNamaHari ? count($hari['jam_ajar']) : 0;
                                    $prevNamaHari = $hari['nama_hari'];
                                    $namaHariIndex = $loop->index + 1;
                                @endphp

                                @foreach ($hari['jam_ajar'] as $indexJam => $jam)
                                    <tr>
                                        @if ($rowspan > 0)
                                            <td rowspan="{{ $rowspan }}">{{ $namaHariIndex }}</td>
                                            <td rowspan="{{ $rowspan }}">{{ $hari['nama_hari'] }}</td>

                                            @php
                                                $rowspan = 0;
                                            @endphp
                                        @endif

                                        @foreach ($result as $key => $value)
                                            @if ($loop->first)
                                                <td>{{ $result[$key][$hari['nama_hari']][$indexJam]['jamAjar'] }}</td>
                                            @endif

                                            @if (
                                                $result[$key][$hari['nama_hari']][$indexJam]['code'] == 'Apel Pagi' ||
                                                    $result[$key][$hari['nama_hari']][$indexJam]['code'] == 'Istirahat')
                                                @if ($loop->first)
                                                    <td style="text-align: center;background:cyan;color:white" colspan="{{count($result)}}">{{ $result[$key][$hari['nama_hari']][$indexJam]['code'] }}</td>
                                                @endif
                                            @else
                                                <td>{{ $result[$key][$hari['nama_hari']][$indexJam]['code'] }}</td>
                                            @endif
                                        @endforeach
                                    </tr>
                                @endforeach
                            @endforeach

                        </tbody>
                    </table>

                </div>
            </div>
        </div>


    @endsection
    @section('script')
        <script>
            $("#MasterData").addClass("active");
            $("#liMasterData").addClass("menu-open");
            $("#GenerateJadwal").addClass("active");
            $("#jam_mulai,#jam_selesai").timepicker({
                timeFormat: 'HH:mm'
            });
            $('#generate').click(() => {
                $.ajax({
                    url: "<?= url('/jadwal/generate') ?>",
                    method: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                    },
                    success: function(res) {
                        window.location.reload()
                    },
                    error: function(err) {
                        alert(err)
                    }
                })
            })
        </script>
    @endsection
