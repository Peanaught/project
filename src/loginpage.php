<?php
      session_start();
      if(isset($_SESSION['admin'])){
        header('location:home.php');
      }	
  ?>

    <?php include 'includes/header.php'; ?>

  <style>
    body {
      background-image: url('/project/images/logbg.svg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      height: 100%;
      width: 100%;
    }
    .auth-form-light {
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 10px; /* Add rounded corners */
      background-color: rgba(255, 255, 255, 0.95); /* Semi-transparent white */
    }
    .container-scroller {
      height: 100%;
    }
    .container-fluid {
      height: 100%;
    }
    .content-wrapper {
      height: 100%;
      background: transparent !important;
    }
    .page-body-wrapper {
      padding-top: 0;
    }
    html, body {
      height: 100%;
    }
  </style>

  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
          <div class="row w-100 mx-0">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                <div style="display: flex; flex-direction: column; align-items: center; text-align: center; padding: 10px;">
                  <img src="assets/images/logo.svg" alt="logo" style="max-width: 80px; margin-bottom: 5px;">
                  <h4>DICT- Aklan Provincial Field Office</h4>
                </div>
                <p class="fw-light mt-3">Sign in to continue.</p>
                <?php
                  if (isset($_SESSION['error'])) {
                      echo "<div class='alert alert-danger alert-dismissible fade show d-flex align-items-center justify-content-between' role='alert'>
                              <span class='small flex-grow-1'>" . $_SESSION['error'] . "</span>
                              <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close' style='transform: scale(0.8);'></button>
                            </div>";
                      unset($_SESSION['error']);
                  }
                  ?>
                <form class="pt-3" action="login.php" method="POST">
                  <div class="form-group">
                    <label for="username" class="fw-medium">Username</label>
                    <input type="text" class="form-control form-control-lg" id="username" name="username" placeholder="Enter username" required>
                  </div>
                  <div class="form-group mt-3">
                    <label for="password" class="fw-medium">Password</label>
                    <div class="input-group">
                      <input type="password" class="form-control form-control-lg" id="password" name="password" placeholder="Enter password" required>
                      <button class="btn text-primary border-0 position-absolute end-0 top-50 translate-middle-y" 
                              style="z-index: 10; background: transparent;" 
                              type="button" 
                              id="togglePassword">
                        <i class="mdi mdi-eye mdi-24px" id="toggleIcon"></i>
                      </button>
                    </div>
                  </div>
                  <div class="mt-3 d-grid gap-2">
                    <button type="submit" class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" name="login">Login</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/template.js"></script>
    <script src="assets/js/settings.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/todolist.js"></script>
    <!-- endinject -->
    <script>
      document.getElementById('togglePassword').addEventListener('click', function() {
        const password = document.getElementById('password');
        const icon = document.getElementById('toggleIcon');
        
        if (password.type === 'password') {
          password.type = 'text';
          icon.classList.remove('mdi-eye');
          icon.classList.add('mdi-eye-off');
        } else {
          password.type = 'password';
          icon.classList.remove('mdi-eye-off');
          icon.classList.add('mdi-eye');
        }
      });
    </script>
  </body>
</html>