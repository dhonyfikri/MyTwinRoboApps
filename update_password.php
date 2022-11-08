<?php
require("koneksi.php");

$response = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $email_user = $_POST["email_user"];
    $new_password = md5($_POST["new_password"]);

    $perintah = "SELECT COUNT(*) AS usercount FROM user WHERE `email` = '$email_user'";
    $eksekusi = mysqli_query($konek, $perintah);
    $cek = mysqli_affected_rows($konek);

    if($cek > 0 && mysqli_fetch_object($eksekusi)->usercount > 0 ){
        $perintah = "UPDATE user SET `password` = '$new_password', `updated_at` = now() WHERE BINARY `email` = '$email_user'";

        if(mysqli_query($konek, $perintah)){
            $response["kodeUser"] = 1;
            $response["pesanUser"] = "Berhasil Update Password"; 
        }
        else{
            $response["kodeUser"] = 0;
            $response["pesanUser"] = "Gagal Update Password";
        }
    }
    else {
        $response["kodeUser"] = 0;
        $response["pesanUser"] = "Email tidak terdaftar";
    }
    echo json_encode($response);
    mysqli_close($konek);
}
else{
    $response["kodeUser"] = 0;
    $response["pesanUser"] = "Tidak Ada Post Data";
    echo json_encode($response);
}

?>