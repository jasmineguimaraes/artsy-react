<?php
    header("Access-Control-Allow-Origin:*");
    require_once 'dbconnection.php';

    if($_SERVER['REQUEST_METHOD']==='POST'){
        $nome = $_GET['nome'];
        $email = $_GET['email'];
        $msg = $_GET['msg'];
        $sql = "insert into atendimento (nomecompleto, email, mensagem) values('$nome', '$email', '$msg')";
        $result = query($sql);

        //print_r( json_encode( $result->fetch_all(MYSQLI_ASSOC)));
        if ($result){                       
            //$sql = "SELECT totalMsg FROM atendimento JOIN clientes on atendimento.email='$email' and atendimento.email = clientes.email"
            //$result = query($sql);
            echo "Suas informações foram enviadas.";// ."Voce tem um total de " . $result . " mensagen(s)";

            //echo json_encode( $result->fetch_all(MYSQLI_ASSOC));
        } else {
            echo "Tivemos algum problema ao enviar sua mensagem, tente novamente mais tarde";
        }
    }
?>