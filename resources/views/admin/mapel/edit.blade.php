@extends('template_backend.home')
@section('heading', 'Edit Mapel')
@section('page')
  <li class="breadcrumb-item active"><a href="{{ route('mapel.index') }}">Mapel</a></li>
  <li class="breadcrumb-item active">Edit Mapel</li>
@endsection
@section('content')
<div class="col-md-12">
    <!-- general form elements -->
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title">Edit Data Mapel</h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form action="{{ route('mapel.store') }}" method="post">
        @csrf
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
                <input type="hidden" name="mapel_id" value="{{ $mapel->id }}">
                <div class="form-group">
                  <label for="nama_mapel">Nama Mapel</label>
                  <input type="text" id="nama_mapel" name="nama_mapel" value="{{ $mapel->nama_mapel }}" class="form-control @error('nama_mapel') is-invalid @enderror" placeholder="{{ __('Nama Mata Pelajaran') }}">
                </div>
                <div class="form-group">
                  <label for="paket_id">Paket</label>
                  <select id="paket_id" name="paket_id" class="form-control @error('paket_id') is-invalid @enderror select2bs4">
                    <option value="">-- Pilih Paket Mapel --</option>
                    <option value="9"
                        @if ($mapel->paket_id == '9')
                            selected
                        @endif
                    >Semua</option>
                    @foreach ($paket as $data)
                      <option value="{{ $data->id }}"
                        @if ($mapel->paket_id == $data->id)
                            selected
                        @endif
                      >{{ $data->ket }}</option>
                    @endforeach
                  </select>
                </div>
                <div class="form-group">
                    <label for="kelompok">Kelompok</label>
                    <select id="kelompok" name="kelompok" class="select2bs4 form-control @error('kelompok') is-invalid @enderror">
                        <option value="">-- Pilih Kelompok Mapel --</option>
                        <option value="A"
                            @if ($mapel->kelompok == 'A')
                                selected
                            @endif
                        >Pelajaran Umum</option>
                        <option value="B"
                            @if ($mapel->kelompok == 'B')
                                selected
                            @endif
                        >Pelajaran Khusus</option>
                        <option value="C"
                            @if ($mapel->kelompok == 'C')
                                selected
                            @endif
                        >Pelajaran Keahlian</option>
                    </select>
                </div>
                <div class="form-group">
                  <label for="hour_weekly">Hour Weekly</label>
                  <input type="number" id="hour_weekly" name="hour_weekly" value="{{ $mapel->hour_weekly }}" class="form-control @error('hour_weekly') is-invalid @enderror" placeholder="{{ __('Hour Weekly') }}">
                </div>

                <div class="form-group">
                  <label for="max_session">Max Session</label>
                  <input type="number" id="max_session" name="max_session" value="{{ $mapel->max_session }}" class="form-control @error('max_session') is-invalid @enderror" placeholder="{{ __('Max Session') }}">
                </div>
                
                <div class="form-group">
                  <label for="kode_warna">Kode Warna</label>
                  <div class="input-group">
                      <input type="text" id="kode_warna" name="kode_warna" value="{{ $mapel->kode_warna }}" class="form-control @error('kode_warna') is-invalid @enderror" placeholder="{{ __('Contoh: #FF5733') }}">
                      <div class="input-group-append">
                          <input type="color" id="color_picker" class="form-control" style="height: 38px; width: 50px; padding: 0; border: none;" value="{{ $mapel->kode_warna ? $mapel->kode_warna : '#3c8dbc' }}">
                      </div>
                  </div>
                  <small class="text-muted">Pilih warna atau ketik kode HEX (#FF5733)</small>
                </div>
            </div>
          </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
          <a href="#" name="kembali" class="btn btn-default" id="back"><i class='nav-icon fas fa-arrow-left'></i> &nbsp; Kembali</a> &nbsp;
          <button name="submit" class="btn btn-primary"><i class="nav-icon fas fa-save"></i> &nbsp; Update</button>
        </div>
      </form>
    </div>
    <!-- /.card -->
</div>
@endsection
@section('script')
<script type="text/javascript">
    $(document).ready(function() {
        $('#back').click(function() {
            window.location="{{ route('mapel.index') }}";
        });
        
        // Fungsi untuk color picker
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
    });
    
    $("#MasterData").addClass("active");
    $("#liMasterData").addClass("menu-open");
    $("#DataMapel").addClass("active");
</script>
@endsection