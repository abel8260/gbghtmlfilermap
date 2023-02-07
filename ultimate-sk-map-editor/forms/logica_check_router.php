<?php
session_start();
error_reporting(E_ERROR | E_PARSE);
$array0 = array(
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2045.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2046.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2047.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2048.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2049.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2050.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2051.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2052.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2053.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2054.html',
    'http://localhost/jogos/sk-map-maker/maps/keypoint_2055.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2056.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2057.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2058.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2059.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2060.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2061.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2062.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2063.html',
	'http://localhost/jogos/sk-map-maker/maps/keypoint_2064.html'
	);



// Initialize a variable into domain name


	$domain1 = $_GET['input0'];
    
	// Function to get HTTP response code
	function get_http_response_code($domain1) {
		$headers = get_headers($domain1);
		return substr($headers[0], 9, 3);
	}
	echo $domain1."<br/>";
	// Function call
	$get_http_response_code = get_http_response_code($domain1);

	// Display the HTTP response code
	echo $get_http_response_code;
    $_SESSION['code_pre_input0'] = $domain1;
     $_SESSION['code_pre_input1'] = strval($get_http_response_code);
	// Check HTTP response code is 200 or not
	if ( $get_http_response_code == 200 ){
		echo "<br>HTTP request successfully";
	
	$_SESSION['code_pre_input2'] = "HTTP request successfully";
	}else{
		$_SESSION['code_pre_input2'] = "HTTP request not successfully";
		echo "<br>HTTP request not successfully!";}
	
	header('location: form_http.php');

?>
