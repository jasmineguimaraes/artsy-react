<?php
    header("Access-Control-Allow-Origin:*");
    require_once 'dbconnection.php';

    if($_SERVER['REQUEST_METHOD']==='GET'){
        $sql="SELECT DISTINCT local from estoque";
        $result = query($sql);

        //print_r( json_encode( $result->fetch_all(MYSQLI_ASSOC)));

        echo json_encode( $result->fetch_all(MYSQLI_ASSOC));
    }
?>
