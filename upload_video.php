<?php

    $target_dir = "uploads/";
    $target_file_name = $target_dir . basename($_FILES["file"]["name"]);
    $response = array();

    if(isset($_FILES["file"])){
        if(move_uploaded_file($_FILES["file"]["tmp_name"], $target_file_name)){
            $success = true;
            $message = "Sukses";
        }
        else{
            $success = false;
            $message = "Error saat upload";
        }
    }
    else{
        $success = false;
        $message = "Form salah";
    }

    $response["success"] = $success;
    $response["message"] = $message;
    echo json_encode($response);

?>