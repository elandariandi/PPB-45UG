<?php
    include_once('connection.php');
    $kdprdk = $_POST['kd'];
    $getdata = mysqli_query($koneksi, "SELECT * FROM menumkn WHERE kd='$kdprdk'");
    $rows = mysqli_num_rows($getdata);
    $delete = "DELETE FROM menumkn WHERE kd = '$kd'";
    $exedelete = mysqli_query($koneksi,$delete);
    $respose = array();
    if ($rows > 0) {
        if ($exedelete) {
            $respose['code']=1;
            $respose['message']="Delete Success";
        }else{
            $respose['code']=0;
            $respose['message']="Failed Delete";
        }
    }else{
        $respose['code']=0;
        $respose['message']="Failed Delete, data not found";
    }
    echo json_encode($respose);
?>