<?php
    include_once('connection.php');
    $kdprdk = $_POST['kd'];
    $nmprdk = $_POST['produk'];
    $deskripsi = $_POST['deskripsi'];
    $harga = $_POST['harga'];
    $gambar = $_POST['gambar'];
    $getdata = mysqli_query($koneksi,"SELECT * FROM menumkn WHERE kd ='$kdprdk'");
    $rows = mysqli_num_rows($getdata);
    $respose = array();
    if($rows > 0 )
    {
    $query = "UPDATE menumkn SET produk='$nmprdk',deskripsi='$deskripsi',harga='$harga',gambar='$gambar' WHERE kd='$kdprdk'";
    $exequery = mysqli_query($koneksi,$query);
    if($exequery){
    $respose['code'] =1;
    $respose['message'] = "Update Success";
    }else{
    $respose['code'] =0;
    $respose['message'] = "Failed Update";
    }
    }else{
    $respose['code'] =0;
    $respose['message'] = "Failed Update : data tidak ditemukan";
    }
    echo json_encode($respose);
?>