<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">
    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <div class="sidebar-brand d-flex align-items-center justify-content-center">
        <div class="text-lg">
          <i class="fa-solid fa-shop" style="font-size: 30px;"></i>
          <div class="sidebar-brand-text mx-3"> Admin </div>
        </div>
      </div>
<!--  -->

<!-- Tampilkan Role -->
<li class="nav-item">
  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
    <i class="fa-solid fa-user-shield"></i>
    <span><b>Role:</b> <?= isset($role) ? htmlspecialchars($role) : 'Unknown'; ?></span>
  </a>
</li>
      <!-- Sidebar Menu Items -->
      <li class="nav-item <?= ($topbar == 'index') ? 'active' : ''; ?>">
        <a class="nav-link" href="<?= base_url("Admin/index"); ?>">
          <i class="fa-solid fa-bars"></i>
          <span><b>DATA PRODUK</b><?= ($topbar == 'index') ? ' <u></u>' : ''; ?></span>
        </a>
      </li>
      <!-- HASIL MENU -->
      <li class="nav-item <?= ($topbar == 'hasil') ? 'active' : ''; ?>">
        <a class="nav-link" href="<?= base_url("Admin/index_submit"); ?>">
          <i class="fa-solid fa-chart-bar"></i>
          <span><b>PERHITUNGAN</b><?= ($topbar == 'hasil') ? ' <u></u>' : ''; ?></span>
        </a>
      </li>
      <li class="nav-item <?= ($topbar == 'perhitungan') ? 'active' : ''; ?>">
        <a class="nav-link" href="<?= base_url("Admin/index_perhitungan"); ?>">
          <i class="fa-solid fa-square-root-variable"></i>
          <span><b>HASIL PERHITUNGAN</b><?= ($topbar == 'perhitungan') ? ' <u></u>' : ''; ?></span>
        </a>
      </li>
      <li class="nav-item <?= ($topbar == 'akun') ? 'active' : ''; ?>">
        <a class="nav-link" href="<?= base_url("Admin/index_akun"); ?>">
          <i class="fa-solid fa-users"></i>
          <span><b>AKUN</b><?= ($topbar == 'akun') ? ' <u></u>' : ''; ?></span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" onclick="logout()">
          <i class="fa-solid fa-right-from-bracket"></i>
          <span><b>LOGOUT</b></span>
        </a>
      </li>




<!--  -->
      <!-- Divider -->
      <hr class="sidebar-divider my-0">
      <br>
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>
    </ul>
    <!-- End of Sidebar -->