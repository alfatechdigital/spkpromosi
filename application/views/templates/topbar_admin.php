<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

  <!-- Main Content -->
  <div id="content">

    <!-- Topbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
      <!-- <a class="navbar-brand" href="#">Navbar</a> -->

    </nav>

    <script>
      function logout() {
        Swal.fire({
          title: 'Yakin ingin Logout?',
          // text: "You won't be able to revert this!",
          icon: 'question',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Logout!'
        }).then((result) => {
          if (result.isConfirmed) {
            window.location.replace(baseUrl + 'Autentifikasi/logout');
          }
        })
      }
    </script>