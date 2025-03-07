<?php
    include 'includes/session.php';

    if(isset($_POST['edit'])){
        $id = $_POST['id'];
        $month_2 = $_POST['month_2'];
        $month_1 = $_POST['month_1'];
        $date_2 = $_POST['date_2'];
        $gtc = $_POST['gtc'];
        $ur = $_POST['ur'];
        $dr = $_POST['dr'];
        $uc = $_POST['uc'];
        $evax = $_POST['evax'];
        $other_ca = $_POST['other_ca'];
        $annex = $_POST['annex'];
        $total_amount_2 = $gtc + $dr  + $uc  + $evax  + $other_ca  + $annex;

        // Log the received dates
        error_log("Received month_2: $month_2");
        error_log("Received month_1: $month_1");

        // Format month_2 and month_1 to save as Y-m-d
        try {
            $month_2 = (new DateTime($month_2))->format('Y-m-d');
            $month_1 = (new DateTime($month_1))->format('Y-m-d');
        } catch (Exception $e) {
            error_log("Date formatting error: " . $e->getMessage());
            $_SESSION['error'] = 'Invalid date format';
            header('location: electric_bill.php');
            exit();
        }

        // Log the formatted dates
        error_log("Formatted month_2: $month_2");
        error_log("Formatted month_1: $month_1");

        $sql = "SELECT * FROM electric_bill WHERE id = $id";
        $query = $conn->query($sql);
        $row = $query->fetch_assoc();

        $sql = "UPDATE electric_bill SET month_2 = '$month_2', month_1 = '$month_1', date_2 = '$date_2', gtc = '$gtc', ur = '$ur', dr = '$dr', uc = '$uc', evax = '$evax', other_ca = '$other_ca', annex = '$annex', total_amount_2 = '$total_amount_2' WHERE id = '$id'";
        if($conn->query($sql)){
            $_SESSION['success'] = 'Electric bill updated successfully';
        }
        else{
            $_SESSION['error'] = $conn->error;
        }
    }
    else{
        $_SESSION['error'] = 'Fill up edit form first';
    }

    header('location: electric_bill.php');

?>