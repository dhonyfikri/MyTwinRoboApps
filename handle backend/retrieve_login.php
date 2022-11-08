<?php
require("koneksi.php");

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $usernameOrEmail = $_POST["username_or_email"];
    $metode = $_POST["metode"];

    if($metode == "cek-login"){
        $password_user = md5($_POST["password"]);
        $perintah = "SELECT COUNT(*) AS usercount, id AS id_user, nama_depan FROM user WHERE (BINARY `username` = '$usernameOrEmail' OR BINARY `email` = '$usernameOrEmail') AND BINARY `password` = '$password_user'";
    }
    else if($metode == "cek-duplikat"){
        $perintah = "SELECT COUNT(*) AS usercount FROM user WHERE BINARY `email` = '$usernameOrEmail'";
    }

    $eksekusi = mysqli_query($konek, $perintah);
    $cek = mysqli_affected_rows($konek);

    if($cek > 0){
        $response["kodeLogin"] = 1;
        $response["pesanLogin"] = "Data Tersedia";
        $response["dataLogin"] = array();
    
        while($ambil = mysqli_fetch_object($eksekusi)){
            $F["usercount"] = $ambil->usercount;
            if($metode == "cek-login"){
                $F["idUser"] = $ambil->id_user;
                $F["namaDepanUser"] = $ambil->nama_depan;
            }
    
            array_push($response["dataLogin"], $F);
        }

        // if($response["id_user"] == null){
        //     $response["id_user"] = "null";
        // }

        echo json_encode($response);
        mysqli_close($konek);
    }
    else {
        $response["kodeLogin"] = 0;
        $response["pesanLogin"] = "Data Tidak Tersedia";
        echo json_encode($response);
        mysqli_close($konek);
    }
}
else{
    $response["kodeLogin"] = 0;
    $response["pesanLogin"] = "Tidak Ada Post Data";
    echo json_encode($response);
}

?>