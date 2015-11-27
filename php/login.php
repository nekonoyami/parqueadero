<?php

include_once("conexion.php");
ini_set("display_errors", "off");

$link = conexionServidor();

$usuario = $_POST["usuario"];
$pass = $_POST["clave"];

$sql = "select usu_admin, usu_pass, usu_usuario, usu_documento 
        from usuario where '$usuario' = usu_usuario and '$pass' = usu_pass";
$resultado = darRespuesta($sql, $link);
echo $resultado;
    
?>