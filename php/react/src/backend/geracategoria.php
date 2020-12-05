<?php
    header("Access-Control-Allow-Origin:*");
    require_once 'dbconnection.php';

    if($_SERVER['REQUEST_METHOD']==='GET'){
        $sql="SELECT DISTINCT categoria from produtos";
        $result = query($sql);

        //print_r( json_encode( $result->fetch_all(MYSQLI_ASSOC)));

        echo json_encode( $result->fetch_all(MYSQLI_ASSOC));
    }
?>
