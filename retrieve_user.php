<?php
require("koneksi.php");

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $id_user = $_POST["id_user"];

    if($id_user == "all"){
        $perintah = "SELECT *, TIMESTAMPDIFF(YEAR, `tanggal_lahir`, CURDATE()) as umur, TIMESTAMPDIFF(DAY, CURDATE(), `vip_limit`) as vip_limit FROM user";
    }
    else{
        $perintah = "SELECT *, TIMESTAMPDIFF(YEAR, `tanggal_lahir`, CURDATE()) as umur, TIMESTAMPDIFF(DAY, CURDATE(), `vip_limit`) as vip_limit FROM user WHERE `id` = '$id_user'";
    }

    $eksekusi = mysqli_query($konek, $perintah);
    $cek = mysqli_affected_rows($konek);

    $server_name = $_SERVER['SERVER_ADDR'];

    if($cek > 0){
        $response["kodeUser"] = 1;
        $response["pesanUser"] = "Data Tersedia";
        $response["dataUser"] = array();

        while($ambil = mysqli_fetch_object($eksekusi)){
            $F["idUser"] = $ambil->id;
            $F["emailUser"] = $ambil->email;
            $F["passwordUser"] = $ambil->password;
            $F["usernameUser"] = $ambil->username;
            $F["namaDepanUser"] = $ambil->nama_depan;
            $F["namaBelakangUser"] = $ambil->nama_belakang;
            $F["jenisKelaminUser"] = $ambil->jenis_kelamin;
            $F["tanggalLahirUser"] = $ambil->tanggal_lahir;
            $F["umurUser"] = $ambil->umur;
            $F["namaSekolahUser"] = $ambil->nama_sekolah;
            $F["createdAtUser"] = $ambil->created_at;
            $F["updatedAtUser"] = $ambil->updated_at;
            $F["vipLimit"] = $ambil->vip_limit;
            if(strlen($ambil->foto_profil) > 15){
                if($ambil->foto_profil == "/twinsrobo/image/image-user/default/none.png"){
                    $F["fotoProfilUser"] = $ambil->foto_profil;
                }
                else{
                    $F["fotoProfilUser"] = "http://$server_name".$ambil->foto_profil;
                }
            }
            else {
                $F["fotoProfilUser"] = $ambil->foto_profil;
            }

            array_push($response["dataUser"], $F);
        }
        echo json_encode($response);
        mysqli_close($konek);
    }
    else {
        $response["kodeUser"] = 0;
        $response["pesanUser"] = "Data Tidak Tersedia";
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