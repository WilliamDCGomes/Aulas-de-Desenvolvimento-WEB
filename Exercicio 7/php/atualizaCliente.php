<?php 
require("../banco/conecta.php");
if(isset($_POST["botao"])){

	$id=htmlentities($_POST["id"]);	
	$nome=htmlentities($_POST["nome"]);	
	$cpf=htmlentities($_POST["cpf"]);
	$rg=htmlentities($_POST["rg"]);
	$nascimento=htmlentities($_POST["nascimento"]);
	$endereco=htmlentities($_POST["endereco"]);


	$mysqli->query("update cliente set nome = '$nome', cpf='$cpf', rg = '$rg', nascimento = '$nascimento', endereco = '$endereco' where id = '$id'");
	echo $mysqli->error;
	if ($mysqli->error == "") {
		echo "<link rel='stylesheet' type='text/css' href='../css/layout.css'>";
		echo "<div class='topo'>";
		echo "<div class='left' id='abrir-mapa'></div>";
		echo "<div class='right'>";
		echo "<div class='parte-1' id='abrir-facebook'></div>";
		echo "<div class='parte-2' id='abrir-instagram'></div>";
		echo "<div class='parte-3' id='chamar-whatsapp'></div>";
		echo "<div class='parte-4' id='abrir-linkedin'></div>";			
		echo "<div class='parte-5' id='abrir-email'></div>";	
		echo "</div>";
		echo "<div class='center'></div>";
		echo "</div>";	
		echo "<div class='linha2' align = 'Center'>";
        echo "<p>Alterado com sucesso";
        echo "<br>";
		echo "<a href='../index.php'> Voltar</a></p>";
		echo "</div>";
		if (isset($_GET["pagina"])) {
			$pagina = $_GET["pagina"];
			if ($pagina == 1) {
				require ("home.php");
				$valide = true;
			}
			elseif ($pagina == 2) {
				require ("clientes.php");
				$valide = false;
			}
			elseif ($pagina == 3) {
				require ("parceiros.php");
				$valide = false;
			}
			elseif ($pagina == 4) {
				require ("galeria.php");
				$valide = false;
			}	
			elseif ($pagina == 8) {
				require ("adicionarcli.php");
				
			}
			elseif ($pagina == 9) {
				require ("pesquisarcli.php");
			}	
			elseif ($pagina == 10) {
				require ("cadcli.php");
			}	
		} 
	}
}

?>