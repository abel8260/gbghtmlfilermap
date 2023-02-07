<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/> 
		<title> Cenários add </title>
		
		<style>
           
			.cen_box > p{
				float:left;
			}
	        .cen_box{
				border: 3px solid white;
				margin-bottom:2%; 
	        }

	        .text_cen_box{
				padding-left:1%; 			
	        }

	        .cen_box_title{
				border: 3px solid white;
				margin-bottom:2%; 
	        }
	        .cen_box:hover {
			  background-color: #555555;
			  color:white;
			}
            a.confirm:link, a.confirm:visited,a.menu:link, a.menu:visited, a.voltar:link, a.voltar:visited {
			    background-color: #000;
			    border: 1px solid #000;
			    color: white;
			    display: inline-block;
			    padding: 14px 25px;
			    text-align: center;
			    text-decoration: none;
			    
			    width:100%;
		    }

		    a.confirm:hover, a.confirm:active ,a.menu:hover, a.menu:active , a.voltar:hover, a.voltar:active  {

		      background-color: #e0e0d1;
		      color: #000;
		    }


		    .links{
			    width:120px;
			    margin-bottom:2%; 
		    }
		    a{
		    	text-decoration: none;
		    	color:white;
		    } 
		     body{
            	background-color:black;
            	color:white; 
            }
		</style>
	
	</head>

	<body>
		<div class="links"> 
			<a class= "menu" href="../static/key_24.php">menu</a>
			<br>
			<a class= "voltar" href="../static/key_24.php">voltar</a>
			<br>
		</div>

		<div class="cen_box_title" >
			<p class="text_cen_box"> <b>Escolha de cenário:</b>


 </p> </div>
<?php 
 require '../db/conexao.php';
  $sthh=$pdo->prepare("SELECT * FROM pear ");



                $sthh->execute();
                $resultado_usuarios = $sthh-> fetchAll( PDO::FETCH_ASSOC );
                foreach($resultado_usuarios as  $row) { 
                	
		
		echo "<form  action='../canva/canva.php' method='GET'>";
			echo "<input class='cen_box' aria-label='cenario' type='hidden' class='text_cen_box' name='linkscn' value='".$row['scene']."'> <i> </i> </input>";
			$_SESSION['cenario'] = $row['scene'];
			echo "<input type='submit'>  ".$row['scene']." </input>"; 
		echo "</div>";
		echo "<br/>";

	}	
?>


		
	</body>
</html>