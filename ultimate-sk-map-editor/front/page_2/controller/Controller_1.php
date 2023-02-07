<?php

 include './Model/Model_1.php';
class Controller {
	
    public function login() {
		
		/* Pega o usuário e senha preenchidos no formulário de login da View */
	
		
		
		/* Encaminha os dados a Model para que seja realizado a validação */
		$model = new Model();
		$validacao = $model->validaDados();
		
	/* Pega o resultado da validação realizada no Model e o encaminha para ser exibido pela View */
       
    }
		
}

?>
