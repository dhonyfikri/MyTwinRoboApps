<?php
require("koneksi.php");

$response = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $id_user = $_POST["id_user"];
    $username = $_POST["username"];
    $email = $_POST["email"];
    $nama_depan = $_POST["nama_depan"];
    $nama_belakang = $_POST["nama_belakang"];
    $jenis_kelamin = $_POST["jenis_kelamin"];
    $tanggal_lahir = $_POST["tanggal_lahir"];
    $asal_sekolah = $_POST["asal_sekolah"];
    $string_foto = $_POST["string_foto"];
    $password_user = md5($_POST["password_user"]);

    $perintah = "SELECT COUNT(*) AS usercount FROM user WHERE `id` = $id_user AND BINARY `password` = '$password_user'";
    $eksekusi = mysqli_query($konek, $perintah);
    $cek = mysqli_affected_rows($konek);

    if($cek > 0 && mysqli_fetch_object($eksekusi)->usercount > 0 ){
        $perintah = "UPDATE user SET `email` = '$email', `username` = '$username', `nama_depan` = '$nama_depan', `nama_belakang` = '$nama_belakang',  `jenis_kelamin` = '$jenis_kelamin',  `tanggal_lahir` = '$tanggal_lahir', `nama_sekolah` = '$asal_sekolah', `updated_at` = now()  WHERE `id` = '$id_user'";

        if(mysqli_query($konek, $perintah)){
            if( $string_foto == null){
                $response["kodeUser"] = 1;
                $response["pesanUser"] = "Update Akun Berhasil (tanpa foto)";

                // echo json_encode($response);
                // mysqli_close($konek);
            }
            else if ($string_foto == "hapusfoto") {

                $finalPath = "/twinsrobo/image/image-user/default/none.png"; 
                $insert_picture = "UPDATE user SET `foto_profil` = '$finalPath' WHERE `id` = '$id_user' ";
                $jalankanQuery = mysqli_query($konek, $insert_picture);

                $response["kodeUser"] = 1;
                $response["pesanUser"] = "Update Akun Berhasil (hapus foto)";

                // echo json_encode($response);
                // mysqli_close($konek);

            }
            else {
                if(strlen($string_foto) <= 15){
                    $insert_picture = "UPDATE user SET `foto_profil` = '$string_foto' WHERE `id` = '$id_user'";
                    if (mysqli_query($konek, $insert_picture)) {
                        $response["kodeUser"] = 1;
                        $response["pesanUser"] = "Update Akun Berhasil (Avatar)"; 
                    }
                }
                else{
                    $path = "image/image-user/img$id_user.jpeg";
                    $finalPath = "/twinsrobo/".$path;
                    $insert_picture = "UPDATE user SET `foto_profil` = '$finalPath' WHERE `id` = '$id_user'";
                
                    if (mysqli_query($konek, $insert_picture)) {
                
                        if ( file_put_contents( $path, base64_decode($string_foto) ) ) {
                            
                            $response["kodeUser"] = 1;
                            $response["pesanUser"] = "Register Data Berhasil";
                        } else {
                            
                            $response["kodeUser"] = 0;
                            $response["pesanUser"] = "Error! ".mysqli_error($konek);
                        }
                    }
                }
            }
        }
        else{
            $response["kodeUser"] = 0;
            $response["pesanUser"] = "Gagal Update Akun";
            // echo json_encode($response);
            // mysqli_close($konek);
        }
    }
    else {
        $response["kodeUser"] = 2;
        $response["pesanUser"] = "Data Tidak Tersedia";
        // echo json_encode($response);
        // mysqli_close($konek);
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