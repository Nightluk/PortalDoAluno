<?php 

    $servidor = "localhost";
    $banco = "db_portaldoaluno";
    $usuario = "root";
    $senha = "usbw";

    $conexao = new mysqli($servidor, $usuario, $senha, $banco);

    if($conexao->connect_error){
        echo "Erro de conexão!" . $conexao->connect_error;
    }else{
       /*echo "conectado";*/
    }

?>