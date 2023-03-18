<div class="col-md-12">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"><?= $subjudul ?></h3>
            <!-- /.card-tools -->
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <div class="row">
                <div class="col-sm-2">
          <div class="form-group">
              <label>Bulan :</label>
                <select name="bulan" id="bulan"  class="form-control">
                  <option value="">--Bulan--</option>
                  <option value="1">Januari</option>
                  <option value="2">Februari</option>
                  <option value="3">Maret</option>
                  <option value="4">April</option>
                  <option value="5">Mei</option>
                  <option value="6">Juni</option>
                  <option value="7">Juli</option>
                  <option value="8">Agustus</option>
                  <option value="9">September</option>
                  <option value="10">Oktober</option>
                  <option value="11">November</option>
                  <option value="12">Desember</option>
                </select>
              </div>
          </div>

          <div class="col-sm-7">
           <div class="form-group">
            <label>Tahun :</label>
            <div class="col-10 input-group">
              <select name="Tahun" id="tahun"  class="form-control">
                <option value="">--Tahun--</option>
                <option value="2021">2021</option>
                <option value="2022">2022</option>
                <option value="2023">2023</option>
                <option value="2024">2024</option>
              </select>
              <span class="input-group-append">
                <button onclick="ViewTabelLaporan()" class="btn btn-primary btn-flat" data-toggle="modal" data-target="#cari-produk">
                  <i class="fas fa-file-alt"></i>  View Laporan Bulanan</button>
                  <button onclick="PrintLaporan()" class="btn btn-success btn-flat">
                    <i class="fas fa-print"></i> Print Laporan
                  </button>
                </span>
              </div>
            </div>
                </div>
                <div class="col-sm-12">
                    <hr>
                    <div class="Tabel">

                    </div>
                </div>
            </div>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>


<script>
    function ViewTabelLaporan() {
        let bulan = $('#bulan').val();
        let tahun = $('#tahun').val();
        if (bulan == "") {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Bulan Belum Dipilih !!!',
            });
            } else if(tahun == "") {
                Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Tahun Belum Dipilih !!!',
            });
            } else {
                $.ajax({
                    type: "POST",
                    url: "<?= base_url('Laporan/ViewLaporanBulanan') ?>",
                    data: {
                        bulan: bulan,
                        tahun: tahun,
                    },
                    dataType: "JSON",
                    success: function (response) {
                        if (response.data) {
                            $('.Tabel').html(response.data)
                        }
                    }
                });
            }
        }


        function PrintLaporan() {
            let bulan = $('#bulan').val();
        let tahun = $('#tahun').val();
        if (bulan == "") {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Bulan Belum Dipilih !!!',
            });
            } else if(tahun == "") {
                Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Tahun Belum Dipilih !!!',
            });
            } else {
                NewWin = window.open('<?= base_url('Laporan/PrintLaporanBulanan') ?>/' + bulan + '/' + tahun, 'NewWin', 'toolbar=no, width=1100,height=500,scrollbars=yes');
            }
        }
</script>