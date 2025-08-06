<!DOCTYPE html>
<html>

<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 8px;
        }

        .header {
            text-align: center;
            margin-bottom: 10px;
        }

        .title {
            font-size: 12px;
            font-weight: bold;
        }

        .subtitle {
            font-size: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 5px;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 4px;
            text-align: center;
            font-size: 7px;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        .special-cell {
            background-color: cyan;
            color: white;
            text-align: center;
        }

        .page-break {
            page-break-before: always;
        }

        .avoid-break {
            page-break-inside: avoid;
        }

        .legend-title {
            font-weight: bold;
            text-align: center;
            margin-bottom: 5px;
            font-size: 9px;
        }

        /* Updated styles for side-by-side layout */
        .legend-container {
            display: flex;
            flex-wrap: nowrap;
            /* Prevent wrapping to ensure side-by-side */
            justify-content: space-between;
            margin-top: 10px;
            width: 100%;
            gap: 10px;
            /* Add spacing between columns */
        }

        .legend-column {
            width: 48%;
            /* Roughly equivalent to col-md-6 */
            margin-bottom: 10px;
            box-sizing: border-box;
            /* Ensure padding/borders don't affect width */
        }

        .legend-subtitle {
            font-weight: bold;
            text-align: center;
            margin-bottom: 5px;
            font-size: 8px;
            background-color: #f2f2f2;
            padding: 3px;
        }

        .legend-table {
            width: 100%;
            margin-bottom: 10px;
            border-collapse: collapse;
        }

        .legend-table th,
        .legend-table td {
            padding: 3px;
            font-size: 7px;
            border: 1px solid #ddd;
        }

        @media print {
            .page-break {
                page-break-before: always;
            }

            .avoid-break {
                page-break-inside: avoid;
            }

            /* Ensure flexbox works in DomPDF */
            .legend-container {
                display: flex !important;
                flex-wrap: nowrap !important;
            }

            .legend-column {
                width: 48% !important;
                float: none !important;
                /* Avoid floating issues in DomPDF */
            }
        }
    </style>
</head>

<body>
    <div class="header">
        <div class="title">JADWAL PELAJARAN</div>
        <div class="subtitle">TAHUN AJARAN 2023/2024</div>
        <div class="subtitle">SMA NEGERI 7 HALMAHERA SELATAN</div>
    </div>

    <table>
        <thead>
            <tr>
                <th style="width: 3%">No.</th>
                <th style="width: 7%">Hari</th>
                <th style="width: 10%">Waktu</th>
                @foreach ($result as $key => $value)
                    <th>{{ $key }}</th>
                @endforeach
            </tr>
        </thead>
        <tbody>
            @php
                $prevNamaHari = '';
                $currentPage = 1;
            @endphp

            @foreach ($haris as $index => $hari)
                {{-- Tambahkan page break sebelum Rabu --}}
                @if ($hari['nama_hari'] == 'Kamis' && $index > 0)
        </tbody>
    </table>
    <div class="page-break"></div>
    <table>
        <thead>
            <tr>
                <th style="width: 3%">No.</th>
                <th style="width: 7%">Hari</th>
                <th style="width: 10%">Waktu</th>
                @foreach ($result as $key => $value)
                    <th>{{ $key }}</th>
                @endforeach
            </tr>
        </thead>
        <tbody>
            @endif

            @php
                $rowspan = $hari['nama_hari'] !== $prevNamaHari ? count($hari['jam_ajar']) : 0;
                $prevNamaHari = $hari['nama_hari'];
                $namaHariIndex = $loop->index + 1;
            @endphp

            @for ($i = 0; $i <= 9; $i++)
                <tr class="avoid-break">
                    @if ($rowspan > 0)
                        <td rowspan="10" style="font-size: 7px;">{{ $namaHariIndex }}</td>
                        <td rowspan="10" style="font-size: 7px;">{{ $hari['nama_hari'] }}</td>

                        @php
                            $rowspan = 0;
                        @endphp
                    @endif

                    @foreach ($result as $key => $value)
                        @if ($loop->first)
                            @if (isset($result[$key][$hari['nama_hari']][$i]['jamAjar']))
                                <td style="font-size: 7px;">{{ $result[$key][$hari['nama_hari']][$i]['jamAjar'] }}</td>
                            @else
                                <td style="font-size: 7px;">-</td>
                            @endif
                        @endif

                        @if (isset($result[$key][$hari['nama_hari']][$i]['code']) &&
                                ($result[$key][$hari['nama_hari']][$i]['code'] == 'Apel Pagi' ||
                                    $result[$key][$hari['nama_hari']][$i]['code'] == 'Istirahat' ||
                                    $result[$key][$hari['nama_hari']][$i]['code'] == 'Apel Pagi dan Kultum' ||
                                    $result[$key][$hari['nama_hari']][$i]['code'] == 'Apel Pagi & Upacara Bendera'))
                            @if ($loop->first)
                                <td class="special-cell" colspan="{{ count($result) }}" style="font-size: 7px;">
                                    {{ $result[$key][$hari['nama_hari']][$i]['code'] }}
                                </td>
                            @endif
                        @else
                            <td style="font-size: 7px;">{{ $result[$key][$hari['nama_hari']][$i]['code'] ?? '-' }}</td>
                        @endif
                    @endforeach
                </tr>
            @endfor
            @endforeach
        </tbody>
    </table>
















    <div class="page-break"></div>

    <div class="legend-title">KETERANGAN</div>

    <!-- Guru Tables Side by Side -->
    <div class="legend-container avoid-break">
        <!-- Guru Column 1 -->
        <div class="legend-column">
            <div class="legend-subtitle">DAFTAR GURU</div>
            <table class="legend-table">
                <thead>
                    <tr>
                        <th width="10%">No.</th>
                        <th width="60%">Nama Guru</th>
                        <th width="30%">Kode</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($gurus as $index => $guru)
                        @if ($index < ceil(count($gurus) / 2))
                            <tr>
                                <td>{{ $index + 1 }}</td>
                                <td>{{ $guru['nama_guru'] }}</td>
                                <td>{{ $guru['id'] }}</td>
                            </tr>
                        @endif
                    @endforeach
                </tbody>
            </table>
        </div>

        <!-- Guru Column 2 -->
        <div class="legend-column">
            <div class="legend-subtitle">DAFTAR GURU (LANJUTAN)</div>
            <table class="legend-table">
                <thead>
                    <tr>
                        <th width="10%">No.</th>
                        <th width="60%">Nama Guru</th>
                        <th width="30%">Kode</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($gurus as $index => $guru)
                        @if ($index >= ceil(count($gurus) / 2))
                            <tr>
                                <td>{{ $index + 1 }}</td>
                                <td>{{ $guru['nama_guru'] }}</td>
                                <td>{{ $guru['id'] }}</td>
                            </tr>
                        @endif
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

    <!-- Mapel Tables Side by Side -->
    <div class="legend-container avoid-break">
        <!-- Mapel Column 1 -->
        <div class="legend-column">
            <div class="legend-subtitle">DAFTAR MATA PELAJARAN</div>
            <table class="legend-table">
                <thead>
                    <tr>
                        <th width="10%">No.</th>
                        <th width="60%">Nama Mapel</th>
                        <th width="30%">Kode</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($mapels as $index => $mapel)
                        @if ($index < ceil(count($mapels) / 2))
                            <tr>
                                <td>{{ $index + 1 }}</td>
                                <td>{{ $mapel['nama_mapel'] }}</td>
                                <td>{{ $mapel['code'] }}</td>
                            </tr>
                        @endif
                    @endforeach
                </tbody>
            </table>
        </div>

        <!-- Mapel Column 2 -->
        <div class="legend-column">
            <div class="legend-subtitle">DAFTAR MATA PELAJARAN (LANJUTAN)</div>
            <table class="legend-table">
                <thead>
                    <tr>
                        <th width="10%">No.</th>
                        <th width="60%">Nama Mapel</th>
                        <th width="30%">Kode</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($mapels as $index => $mapel)
                        @if ($index >= ceil(count($mapels) / 2))
                            <tr>
                                <td>{{ $index + 1 }}</td>
                                <td>{{ $mapel['nama_mapel'] }}</td>
                                <td>{{ $mapel['code'] }}</td>
                            </tr>
                        @endif
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>
