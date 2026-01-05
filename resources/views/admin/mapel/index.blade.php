@extends('template_backend.home')
@section('heading', 'Data Mapel')
@section('page')
  <li class="breadcrumb-item active">Data Mapel</li>
@endsection
@section('content')
<div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">
                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".tambah-mapel">
                    <i class="nav-icon fas fa-folder-plus"></i> &nbsp; Tambah Data Mapel
                </button>
            </h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Nama Mapel</th>
                    <th>Paket</th>
                    <th>Kelompok</th>
                    <th>Hour Weekly</th>
                    <th>Max Session</th>
                    <th>Kode Warna</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($mapel as $result => $data)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $data->nama_mapel }}</td>
                    @if ( $data->paket_id == 9 )
                      <td>{{ 'Semua' }}</td>
                    @else
                      <td>{{ $data->paket->ket }}</td>
                    @endif
                    <td>{{ $data->kelompok }}</td>
                    <td>{{ $data->hour_weekly }}</td>
                    <td>{{ $data->max_session }}</td>
                    <td>
                      <div style="display: flex; align-items: center;">
                        <div style="width: 20px; height: 20px; background-color: {{ $data->kode_warna }}; border: 1px solid #ccc; margin-right: 8px;"></div>
                        {{ $data->kode_warna }}
                      </div>
                    </td>
                    <td>
                        <form action="{{ route('mapel.destroy', $data->id) }}" method="post">
                            @csrf
                            @method('delete')
                            <a href="{{ route('mapel.edit', Crypt::encrypt($data->id)) }}" class="btn btn-success btn-sm"><i class="nav-icon fas fa-edit"></i> &nbsp; Edit</a>
                            <button class="btn btn-danger btn-sm"><i class="nav-icon fas fa-trash-alt"></i> &nbsp; Hapus</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
          </table>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>
<!-- /.col -->

<!-- Extra large modal -->
<div class="modal fade bd-example-modal-md tambah-mapel" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
    <div class="modal-header">
        <h4 class="modal-title">Tambah Data Mapel</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <div class="modal-body">
        <form action="{{ route('mapel.store') }}" method="post">
          @csrf
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="nama_mapel">Nama Mapel</label>
                  <input type="text" id="nama_mapel" name="nama_mapel" class="form-control @error('nama_mapel') is-invalid @enderror" placeholder="{{ __('Nama Mata Pelajaran') }}">
                </div>
                <div class="form-group">
                  <label for="paket_id">Paket</label>
                  <select id="paket_id" name="paket_id" class="form-control @error('paket_id') is-invalid @enderror select2bs4">
                    <option value="">-- Pilih Paket Mapel --</option>
                    <option value="9">Semua</option>
                    @foreach ($paket as $data)
                      <option value="{{ $data->id }}">{{ $data->ket }}</option>
                    @endforeach
                  </select>
                </div>
                <div class="form-group">
                    <label for="kelompok">Kelompok</label>
                    <select id="kelompok" name="kelompok" class="select2bs4 form-control @error('kelompok') is-invalid @enderror">
                      <option value="">-- Pilih Kelompok Mapel --</option>
                      <option value="A">Pelajaran Umum</option>
                      <option value="B">Pelajaran Khusus</option>
                      <option value="C">Pelajaran Keahlian</option>
                    </select>
                </div>
                <div class="form-group">
                  <label for="hour_weekly">Hour Weekly</label>
                  <input type="number" id="hour_weekly" name="hour_weekly" class="form-control @error('hour_weekly') is-invalid @enderror" placeholder="{{ __('Hour Weekly') }}">
                </div>

                <div class="form-group">
                  <label for="max_session">Max Session</label>
                  <input type="number" id="max_session" name="max_session" class="form-control @error('max_session') is-invalid @enderror" placeholder="{{ __('Max Session') }}">
                </div>
                
                <div class="form-group">
                  <label for="kode_warna">Kode Warna</label>
                  <div class="input-group">
                      <input type="text" id="kode_warna" name="kode_warna" class="form-control @error('kode_warna') is-invalid @enderror" placeholder="{{ __('Contoh: #FF5733') }}" value="#3c8dbc">
                      <div class="input-group-append">
                          <input type="color" id="color_picker" class="form-control" style="height: 38px; width: 50px; padding: 0; border: none;" value="#3c8dbc">
                      </div>
                  </div>
                  <small class="text-muted">Pilih warna atau ketik kode HEX (#FF5733)</small>
                </div>
              </div>
            </div>
        </div>
        <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal"><i class='nav-icon fas fa-arrow-left'></i> &nbsp; Kembali</button>
            <button type="submit" class="btn btn-primary"><i class="nav-icon fas fa-save"></i> &nbsp; Tambahkan</button>
        </form>
    </div>
    </div>
  </div>
</div>
@endsection
@section('script')
  <script>
    $("#MasterData").addClass("active");
    $("#liMasterData").addClass("menu-open");
    $("#DataMapel").addClass("active");
    
    // Fungsi untuk color picker
    document.addEventListener('DOMContentLoaded', function() {
        const colorPicker = document.getElementById('color_picker');
        const kodeWarnaInput = document.getElementById('kode_warna');
        
        // Saat color picker berubah, update input text
        colorPicker.addEventListener('input', function() {
            kodeWarnaInput.value = this.value;
        });
        
        // Saat input text berubah, update color picker jika valid HEX
        kodeWarnaInput.addEventListener('input', function() {
            const colorValue = this.value;
            // Validasi format HEX
            if (/^#[0-9A-F]{6}$/i.test(colorValue)) {
                colorPicker.value = colorValue;
            }
        });
        
        // Inisialisasi warna saat modal dibuka
        $('.tambah-mapel').on('shown.bs.modal', function () {
            colorPicker.value = kodeWarnaInput.value;
        });
    });
  </script>
@endsection