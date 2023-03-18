<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>H|Kasir</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<?= base_url('admin') ?>/plugins/fontawesome-free/css/all.min.css">
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="<?= base_url('admin') ?>/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?= base_url('admin') ?>/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet"
    href="<?= base_url('admin') ?>/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= base_url('admin') ?>/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">


  <!-- Theme style -->
  <link rel="stylesheet" href="<?= base_url('admin') ?>/dist/css/adminlte.min.css">



  <!-- jQuery -->
  <script src="<?= base_url('admin') ?>/plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="<?= base_url('admin') ?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- SweetAlert2 -->
  <script src="<?= base_url('admin') ?>/plugins/sweetalert2/sweetalert2.min.js"></script>
  <!-- DataTables  & Plugins -->
  <script src="<?= base_url('admin') ?>/plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="<?= base_url('admin') ?>/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="<?= base_url('admin') ?>/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="<?= base_url('admin') ?>/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <script src="<?= base_url('admin') ?>/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
  <script src="<?= base_url('admin') ?>/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
  <script src="<?= base_url('admin') ?>/plugins/jszip/jszip.min.js"></script>
  <script src="<?= base_url('admin') ?>/plugins/pdfmake/pdfmake.min.js"></script>
  <script src="<?= base_url('admin') ?>/plugins/pdfmake/vfs_fonts.js"></script>
  <script src="<?= base_url('admin') ?>/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
  <script src="<?= base_url('admin') ?>/plugins/datatables-buttons/js/buttons.print.min.js"></script>
  <script src="<?= base_url('admin') ?>/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>


  <!-- ChartJS -->
  <script src="<?= base_url('admin') ?>/plugins/chart.js/Chart.min.js"></script>

  <!-- AdminLTE App -->
  <script src="<?= base_url('admin') ?>/dist/js/adminlte.min.js"></script>

  <!-- Auto Numeric -->
  <script src="<?= base_url('autoNumeric') ?>/src/AutoNumeric.js"></script>

</head>

<body class="hold-transition sidebar-mini">
  <div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          
        </li>
      </ul>

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-widget="fullscreen" href="#" role="button">
            <i class="fas fa-expand-arrows-alt"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url('Home/LogOut') ?>">
            <i class="fas fa-sign-out-alt"></i>LogOut
          </a>
        </li>
      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      <a href="index3.html" class="brand-link">
        <img src="<?= base_url('admin') ?>/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
          class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light"><b>H|</b>-Kasir</span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="image">
            <img src="<?= base_url('admin') ?>/dist/img/gaktau.png" class="img-circle elevation-2"
              alt="User Image">
          </div>
          <div class="info">
            <a href="#" class="d-block">
              <?= session()->get('nama_user') ?>
            </a>
          </div>
        </div>




        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->


            <li class="nav-item">
              <a href="<?= base_url('Adminn') ?>" class="nav-link <?= $menu == 'dashboard' ? 'active' : '' ?>">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>
                  Dashboard

                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="<?= base_url('Penjualan') ?>" class="nav-link">
                <i class="nav-icon fas fa-cash-register"></i>
                <p>
                  Penjualan

                </p>
              </a>
            </li>

            <li class="nav-item <?= $menu == 'masterdata' ? 'menu-open' : '' ?>">
              <a href="#" class="nav-link <?= $menu == 'masterdata' ? 'active' : '' ?>">
                <i class="nav-icon fas fa-th"></i>
                <p>
                  Master Data
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="<?= base_url('Produk') ?>" class="nav-link <?= $submenu == 'produk' ? 'active' : '' ?>">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Produk</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('Kategori') ?>" class="nav-link <?= $submenu == 'kategori' ? 'active' : '' ?>">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Kategori</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('Satuan') ?>" class="nav-link <?= $submenu == 'satuan' ? 'active' : '' ?>">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Satuan</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('User') ?>" class="nav-link <?= $submenu == 'user' ? 'active' : '' ?>">
                    <i class="far fa-circle nav-icon"></i>
                    <p>User</p>
                  </a>
                </li>
              </ul>
            </li>

            <li class="nav-item <?= $menu == 'laporan' ? 'menu-open' : '' ?>">
              <a href="#" class="nav-link <?= $menu == 'laporan' ? 'active' : '' ?>">
                <i class="nav-icon fas fa-file-alt"></i>
                <p>
                  Laporan
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="<?= base_url('Laporan/LaporanHarian') ?>"
                    class="nav-link <?= $submenu == 'laporan-harian' ? 'active' : '' ?>">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Laporan Harian</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('Laporan/LaporanBulanan') ?>" class="nav-link <?= $submenu == 'laporan-bulanan' ? 'active' : '' ?>">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Laporan Bulanan</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('Laporan/LaporanTahunan') ?>" class="nav-link <?= $submenu == 'laporan-tahunan' ? 'active' : '' ?>">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Laporan Tahunan</p>
                  </a>
                </li>
              </ul>
            </li>


            <li class="nav-item">
              <a href="<?= base_url('Adminn/Setting') ?>" class="nav-link <?= $menu == 'setting' ? 'active' : '' ?>">
                <i class="nav-icon fas fa-cogs"></i>
                <p>
                  Setting
                </p>
              </a>
            </li>
          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0">
                <?= $judul ?>
              </h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">
                    <?= $judul ?>
                  </a></li>
                <li class="breadcrumb-item active">
                  <?= $subjudul ?>
                </li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">

            <!-- isi konten -->
            <?php
            if ($page) {
              echo view($page);
            }

            ?>
            <!-- isi konten -->
          </div>
          <!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->


    <!-- Main Footer -->
    <footer class="main-footer">
      <!-- To the right -->
      <div class="float-right d-none d-sm-inline">
        Anything you want
      </div>
      <!-- Default to the left -->
      <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">H|-Kasir</a>.</strong> All rights reserved.
    </footer>
  </div>
  <!-- ./wrapper -->

  <!-- REQUIRED SCRIPTS -->


</body>

</html>