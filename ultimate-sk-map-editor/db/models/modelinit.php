<?php

namespace ge;



class Model {
  
    public function validaDados() {
        
      require '../conexao.php';   


			
$link9 = $_POST["link9"];
$linkx = $_POST["linkx"];					
 


 
$sth=$pdo->prepare("INSERT INTO `initiale` (`id`, `init`, `ended`) VALUES (NULL, '$link9', '$link9');");



			$sth->execute();

		header('location: ../../front/page_1/main.php');


		}}$model = new Model();
		$validacao = $model->validaDados();
?>

