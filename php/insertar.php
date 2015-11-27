<?php
include_once("conexion.php");
ini_set("display_erros", "off");

$link = conexionServidor();
$origen = $_POST["origen"];
$data = json_decode($_POST["datos"]);
$valores = "";
$llaves = "";
$sql = "";
$insert = "insert into";

for($i = 0; $i < count($data); $i++){
    foreach()
}

$sql = ($origen != "") ? $insert . $origen

?>


<!--
$array 	= json_decode($_POST['data']);
 
//por cada uo de estos arrays vamos a crear una query para poder hacer un update en la base de datos. y para eso necesitamos recorrer el array por cada uno de sus posiciones
for ($i=0; $i <= count($DATA); $i++) { 
	//una vez que recorremos cada posición entramos a esta donde tenemos cada array con la información necesaria para el update
	foreach ($DATA as $key => $value) {
		//hacemos un poco de limpieza y sanatización de variables y luego creamos nuestras querys
		$id 	= trim(strtolower($value->id));
		$descr 	= filter_var(trim(strtolower($value->desc)), FILTER_SANITIZE_STRING);
		$tipo 	= trim(strtolower($value->tipo));
 
		$q[$i] 		= "UPDATE TABLA SET CAMPO1 = '$descr', CAMPO2 = '$tipo' WHERE ID = $id";
	}
}-->
