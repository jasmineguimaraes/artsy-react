<?php
    header("Access-Control-Allow-Origin:*");
    header("Content-type: application/x-www-form-urlencoded");
    header("Access-Control-Allow-Methods:POST, GET");

    require_once 'dbconnection.php';

    if($_SERVER['REQUEST_METHOD']==='GET'){
        $sql = "SELECT * FROM produtos";
        $result = query($sql);

        //print_r( json_encode( $result->fetch_all(MYSQLI_ASSOC)));

        echo json_encode( $result->fetch_all(MYSQLI_ASSOC));

    } else if($_SERVER['REQUEST_METHOD'] === 'POST') {
        $cat = $_GET['cat'];
        $est = $_GET['est'];
        if (($cat == "") && ($est == "")) {
            $sql = "SELECT * FROM produtos";
        } else if ($est == ""){
            $sql = "SELECT * FROM produtos WHERE categoria = '$cat'";
        } else if ($cat == ""){
            $sql = "SELECT * FROM produtos as p JOIN estoque as e ON e.local= '$est' and p.idproduto=e.idproduto";
        } else {
            $sql = "SELECT * FROM produtos as p JOIN estoque as e ON e.local= '$est' and p.idproduto=e.idproduto WHERE categoria = '$cat'";
        }
        $result = query($sql);
        echo json_encode( $result->fetch_all(MYSQLI_ASSOC));
    }
?>