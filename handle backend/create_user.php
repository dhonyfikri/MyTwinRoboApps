<?php
    require("koneksi.php");

    $response = array();

    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $email = $_POST["email"];
        $password = md5($_POST["password"]);
        $username = $_POST["username"];
        $nama_depan = $_POST["nama_depan"];
        $nama_belakang = $_POST["nama_belakang"];
        $jenis_kelamin = $_POST["jenis_kelamin"];
        $tanggal_lahir = $_POST["tanggal_lahir"];
        $nama_sekolah = $_POST["nama_sekolah"];
        $string_foto = $_POST["string_foto"];

        $perintah = "INSERT INTO user (`email`,`password`,`username`,`nama_depan`,`nama_belakang`,`jenis_kelamin`,`tanggal_lahir`,`nama_sekolah`,`vip_limit`,`created_at`,`updated_at`) VALUES('$email','$password','$username', '$nama_depan', '$nama_belakang', '$jenis_kelamin', '$tanggal_lahir', '$nama_sekolah', '0001-01-01', now(), now())";
        $eksekusi = mysqli_query($konek, $perintah);
        $cek      = mysqli_affected_rows($konek);

        if($cek > 0){
            if ($string_foto == null) {

                $id = mysqli_insert_id($konek);
                $finalPath = "/twinsrobo/image/image-user/default/none.png"; 
                $insert_picture = "UPDATE user SET `foto_profil` = '$finalPath' WHERE `id` = '$id' ";
                $jalankanQuery = mysqli_query($konek, $insert_picture);

                $response["kodeUser"] = 1;
                $response["pesanUser"] = "Register Data Berhasil (tanpa foto)";

                echo json_encode($response);
                mysqli_close($konek);

            } else {

                $id = mysqli_insert_id($konek);

                if(strlen($string_foto) <= 15){
                    $insert_picture = "UPDATE user SET `foto_profil` = '$string_foto' WHERE `id` = '$id' ";
                    if (mysqli_query($konek, $insert_picture)) {
                        $response["kodeUser"] = 1;
                        $response["pesanUser"] = "Register Data Berhasil (Avatar)"; 
                    }
                }
                else{
                    $path = "image/image-user/img$id.jpeg";
                    $finalPath = "/twinsrobo/".$path;
                    $insert_picture = "UPDATE user SET `foto_profil` = '$finalPath' WHERE `id` = '$id' ";
                
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
                echo json_encode($response);
                mysqli_close($konek);
            }
        }
        else{
            $response["kodeUser"] = 0;
            $response["pesanUser"] = "Gagal Register";
            echo json_encode($response);
            mysqli_close($konek);
        }
    }
    else{
        $response["kodeUser"] = 0;
        $response["pesanUser"] = "Tidak Ada Post Data";
        echo json_encode($response);
    }

?>