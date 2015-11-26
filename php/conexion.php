<?php
    ini_set("display_errors", "off");
	
	function conexionServidor()
	{
		# code...
		$link = mysqli_connect("localhost", "root", "", "db_proyecto");
		if ($link -> connect_errno) {
			# code...
			die ("fallo la conexion: (" . $link -> mysqli_connect_errno() . ") " .  $link -> mysqli_connect_errno());
		} else {
			# code...
			return $link;
		}
		
	}

	function desconectarse($link)
	{
		# code...
		if(!mysqli_close($link)){
			echo "Fallo al terminar la conexion";
			exit();
		};
	}

	function consultas($query, $link)
	{
		# code...
		$result = $link->query($query);
		return $result;
	}

    function darRespuesta($sql, $link)
    {
        $result = consultas($sql, $link);
        $datos =array();
        $i = 0;	
        if($result ->num_rows>0)
        {
            while ($rows = $result -> fetch_array(MYSQLI_ASSOC)) {
                # code...
                $datos[$i] = $rows;
                $i++;
            }
            return json_encode($datos);
        }
        else{
            return 0;
        }
    }
	
	
?>