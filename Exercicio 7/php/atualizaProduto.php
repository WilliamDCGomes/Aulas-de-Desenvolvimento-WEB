<?php 
require("../banco/conecta.php");
if(isset($_POST["botao"])){
	$id=htmlentities($_POST["id"]);	
	$nome=htmlentities($_POST["nomeProd"]);	
	$custo=htmlentities($_POST["custo"]);
	$preco=htmlentities($_POST["preco"]);
	$quantidade=htmlentities($_POST["quantidade"]);
	$marca=htmlentities($_POST["marca"]);
	$mysqli->query("update produto set nomeProd = '$nome', custo='$custo', preco = '$preco', quantidade = '$quantidade', marca = '$marca' where id = '$id'");
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
	}
}

?>