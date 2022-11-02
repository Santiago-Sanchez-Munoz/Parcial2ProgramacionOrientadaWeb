<?php
require_once('db_connect.php');
extract($_GET);
$query = $conn->query("SELECT * FROM music_list where id = '{$id}'");
if($query->num_rows > 0){
    $res = $query->fetch_array();
    $delete = $conn->query("DELETE FROM `music_list` where id = '{$id}'");
    if($delete){
        if(!empty($res['image_path']) && is_file(explode("?",$res['image_path'])[0]))
        unlink(explode("?",$res['image_path'])[0]);
        
        if(!empty($res['audio_path']) && is_file(explode("?",$res['audio_path'])[0]))
        unlink(explode("?",$res['audio_path'])[0]);
        
        echo '<script>alert("Datos de audio eliminados con éxito."); location.replace("./")</script>';
    }else{
        echo '<script>alert("No se pueden eliminar los datos de audio."); location.replace("./")</script>';
    }
    
}else{
    echo '<script>alert("ID de datos de audio desconocido."); location.replace("./")</script>';
}