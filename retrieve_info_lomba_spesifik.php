<?php
require("koneksi.php");

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $kategori = $_POST["kategori_info_lomba"];
    $perintah = "SELECT * FROM info_lomba WHERE `$kategori` = true ORDER BY id DESC";
    
    $eksekusi = mysqli_query($konek, $perintah);
    $cek = mysqli_affected_rows($konek);

    $server_name = $_SERVER['SERVER_ADDR'];
    
    if($cek > 0){
        $queryCekJumlah = "SELECT COUNT(*) AS jumlah_info_lomba FROM info_lomba WHERE `$kategori` = true";
    
        $response["jumlahInfoLomba"] = mysqli_fetch_object(mysqli_query($konek, $queryCekJumlah))->jumlah_info_lomba;
    
        $response["kodeInfoLomba"] = 1;
        $response["pesanInfoLomba"] = "Data Tersedia";
        $response["dataInfoLomba"] = array();
    
        while($ambil = mysqli_fetch_object($eksekusi)){
            $F["id"] = $ambil->id;
            $F["judul_lomba"] = $ambil->judul_lomba;
            $F["deskripsi"] = $ambil->deskripsi;
            $F["start_at"] = $ambil->start_at;
            $F["end_at"] = $ambil->end_at;
            $F["catSumoRc"] = $ambil->cat_sumo_rc;
            $F["catMazeSolving"] = $ambil->cat_maze_solving;
            $F["catTransporter"] = $ambil->cat_transporter;
            $F["catDroneRace"] = $ambil->cat_drone_race;
            $F["catUnderWater"] = $ambil->cat_under_water;
            $F["number_of_views"] = $ambil->number_of_views;
            $F["number_of_shares"] = $ambil->number_of_shares;
            $F["pamflet"] = "http://$server_name".$ambil->pamflet;
            $F["created_at"] = $ambil->created_at;
            $F["updated_at"] = $ambil->updated_at;
    
            array_push($response["dataInfoLomba"], $F);
        }
    }
    else {
        $response["kode"] = 0;
        $response["pesan"] = "Data Tidak Tersedia";
    }
}
else{
    $response["kodeInfoLomba"] = 0;
    $response["pesanInfoLomba"] = "Tidak Ada Post Data";
}

echo json_encode($response);
mysqli_close($konek);

?>