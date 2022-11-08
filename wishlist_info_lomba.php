<?php
    require("koneksi.php");

    $response = array();
    
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $idUser = $_POST["id_user"];
        $idEvent = $_POST["id_event"];
        $mode = $_POST["mode"];

        $perintah = "SELECT COUNT(*) AS liked FROM wishlist_info_lomba WHERE `id_user` = '$idUser' AND `id_info_lomba` = '$idEvent'";
        $eksekusi = mysqli_query($konek, $perintah);
        $cek      = mysqli_affected_rows($konek);
    
        if($cek > 0){
            if($mode == "update"){
                if(mysqli_fetch_object($eksekusi)->liked > 0){
                    $perintah = "DELETE FROM wishlist_info_lomba WHERE `id_user` = '$idUser' AND `id_info_lomba` = '$idEvent'";
                    $state = "delete";
                }
                else{
                    $perintah = "INSERT INTO wishlist_info_lomba (`id_user`,`id_info_lomba`,`added_on`) VALUES('$idUser','$idEvent',now())";
                    $state = "add";
                }
    
                $eksekusi = mysqli_query($konek, $perintah);
                $cek      = mysqli_affected_rows($konek);
    
                if($cek > 0){
                    if($state == "add"){
                        $response["kodeWishlist"] = 100;
                        $response["pesanWishlist"] = "Wishlist ditambahkan";
                    }
                    else if($state == "delete"){
                        $response["kodeWishlist"] = 101;
                        $response["pesanWishlist"] = "Wishlist dihapus";
                    }
                }
                else{
                    $response["kodeWishlist"] = 201;
                    $response["pesanWishlist"] = "Gagal update wishlist";
                }
            }
            else if($mode == "cek"){
                if(mysqli_fetch_object($eksekusi)->liked > 0){
                    $response["kodeWishlist"] = 300;
                    $response["pesanWishlist"] = "Disukai";
                }
                else{
                    $response["kodeWishlist"] = 301;
                    $response["pesanWishlist"] = "Belum disukai";
                }
            }
        }
        else{
            $response["kodeWishlist"] = 400;
            $response["pesanWishlist"] = "Gagal cek daftar wishlist";
        }
    }
    else{
        $response["kodeWishlist"] = 0;
        $response["pesanWishlist"] = "Tidak Ada Post Data";
    }
    echo json_encode($response);
    mysqli_close($konek);
?>