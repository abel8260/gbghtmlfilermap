<?php

require('../db/conexao.php');

$_SESSION['scene'] = $_POST['scene9'];
$_SESSION['totalpx'] = $_POST['totalpx9'];
$_SESSION['totaltiles'] = $_POST['totaltiles9'];

$scenes = $_SESSION['scene'];
$pxt = $_SESSION['totalpx'];
$tttiles = $_SESSION['totaltiles'];

$stmt = $pdo -> prepare("INSERT INTO config (id_cfg, scene, total_px, total_tiles) VALUES (NULL, '$scenes', '$pxt', '$tttiles')");

$stmt -> execute();
 
?>