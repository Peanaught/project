<?php include 'includes/header.php';?>
<?php include 'includes/session.php'; ?>

  <body>
    <div class="container-scroller">
      <!-- partial:../../partials/_navbar.html -->
      <?php include 'includes/navbar.php'; ?>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_sidebar.html -->
        <?php include 'includes/sidebar.php'; ?>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <img src="assets/images/dict_proj/pnpki.png" class="img-fluid mb-4 rounded" alt="Header Image">
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1 class="h3 mb-0 text-gray-800 mb-3"><b>Philippine National Public Key Infrastructure (PNPKI)</b></h1>
                <nav style="font-size:85%;" aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0">
                        <li class=""><a href="home.php">Dashboard</a></li>&nbsp;&nbsp;&nbsp;
                        <li class=""><i class="mdi mdi-menu-right"></i></li>&nbsp;&nbsp;&nbsp;
                        <li class="active" aria-current="page">PNPKI</li>
                    </ol>
                </nav>
            </div>
            <?php
                if (isset($_SESSION['error'])) {
                    echo "
                        <div class='alert alert-danger alert-dismissible fade show d-flex align-items-center' role='alert'>
                            <i class='mdi mdi-alert-circle mdi-24px me-2'></i> 
                            <span>".$_SESSION['error']."</span>
                            <button type='button' class='btn-close ms-auto' data-bs-dismiss='alert' aria-label='Close'></button>
                        </div>
                    ";
                    unset($_SESSION['error']);
                }
                if (isset($_SESSION['success'])) {
                    echo "
                        <div class='alert alert-success alert-dismissible fade show d-flex align-items-center' role='alert'>
                            <i class='mdi mdi-check-circle mdi-24px me-2'></i> 
                            <span>".$_SESSION['success']."</span>
                            <button type='button' class='btn-close ms-auto' data-bs-dismiss='alert' aria-label='Close'></button>
                        </div>
                    ";
                    unset($_SESSION['success']);
                }
            ?>
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <button class="btn btn-primary addnew"><i class="mdi mdi-plus"></i> New</button>
                <a href="pnpki_print.php" target="_blank" class="btn btn-md btn-primary btn-flat mr-2">
                    <i class="mdi mdi-printer-outline"></i> Print
                </a>
            </div>
            <table class="table responsive table-striped datatable">
                <thead>
                    <tr>
                        <th class="hidden"></th>
                        <th>ID</th>
                        <th>Project</th>
                        <th>Status</th>
                        <th width="120">Action</th>
                    </tr>
                </thead>
                <tbody>
                  <?php
                    $sql = "SELECT * FROM pnpki;";
                    $query = $conn->query($sql);
                    while($row = $query->fetch_assoc()){
                    $statusBadge = $row['status'] == 'active' ? 'badge-success' : 'badge-danger';
                      echo "
                        <tr>
                          <td class='hidden'></td>
                          <td>".$row['id']."</td>
                          <td>".$row['project_id']."</td>
                          <td class='text-center'>
                              <span class='badge rounded-pill $statusBadge' style='font-size: 0.75rem;'>".ucfirst($row['status'])."</span>
                          </td>
                          <td width='50' class='text-center'>
                            <button class='btn btn-success btn-sm edit btn-flat' data-id='".$row['id']."'><i class='mdi mdi-square-edit-outline'></i> </button>
                            <button class='btn btn-danger btn-sm delete btn-flat' data-id='".$row['id']."'><i class='mdi mdi-trash-can'></i> </button>                          
                          </td>
                        </tr>
                      ";
                    }
                  ?>
                </tbody>
            </table>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
          <?php include 'includes/footer.php';?>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <?php include 'includes/pnpki_modal.php';?>
    <?php include 'includes/scripts.php';?>

    <!-- DataTables CSS and JS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="assets/js/select.dataTables.min.css">
    
    <!-- jQuery (must be included before DataTables JS) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap4.min.js"></script>

    <!-- Initialize DataTable -->
    <script>
    $(document).ready(function () {
      // Handle "Add New" Button Click
      $(document).on('click', '.addnew', function (e) {
        e.preventDefault();
        if ($('#addnew').length) {
          $('#addnew').modal('show');
        }
      });
      
      // Close Modal on Button Click
      $(document).on('click', '.close-modal', function () {
        var modal = $(this).closest('.modal');
        if (modal.length) {
          modal.modal('hide');
        }
      });
    });
  </script>


  </body>
</html>
