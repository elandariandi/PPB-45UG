<?php
    include_once('connection.php');
    $kdprdk = $_POST['kd'];
    $nmprdk = $_POST['produk'];
    $deskripsi = $_POST['deskripsi'];
    $harga = $_POST['harga'];
    $gambar = $_POST['gambar'];
    $insert = "INSERT INTO menumkn(kd,produk,deskripsi,harga,gambar) VALUES('$kdprdk','$nmprdk','$deskripsi','$harga','$gambar')";
    $exeinsert = mysqli_query($koneksi,$insert);
    $response = array();
    if ($exeinsert) {
        $response['code']=1;
        $response['message']= "Data ditambahkan";
    }else{
        $response['code']=0;
        $response['message']= "Failed! Data gagal di tambahkan";
    }
    echo json_encode($response);
?>