<?php
ini_set("display_errors", "off");
include_once("conexion.php");

$link = ConectarseServidor();

ConectarseBaseDatos($link);

$origen = $_POST["origen"];
$sql = "";

if($origen == "parqueadero"){
    $sql = "select * from ";
}else if($origen == "usuario"){
    $sql = "select * from usuario";
}else{
    $sql = "select p.par_pisos, p.par_piso_casillas, c.cas_pos, c.cas_estatus from estado_casilla c, parqueadero p where p.par_piso = c.par_piso";
}
echo darRespuesta($sql, $link);

?>