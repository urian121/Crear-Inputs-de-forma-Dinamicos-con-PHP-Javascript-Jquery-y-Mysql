<?php
$usuario        = "root";
$password       = "";
$servidor       = "localhost";
$basededatos    = "bd_stiven";
$con            = mysqli_connect($servidor, $usuario, $password) or die("No se ha podido conectar al Servidor");
$db             = mysqli_select_db($con, $basededatos) or die("Upps! Error en conectar a la Base de Datos");

$PRODUCTO        = $_REQUEST['PRODUCTO'];
$NUMERO_ORDEN    = $_REQUEST['NUMERO_ORDEN'];
$ESTADO          = $_REQUEST['ESTADO'];

function codAleatorio($length = 5) {
    return substr(str_shuffle(str_repeat($x='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ', ceil($length/strlen($x)) )),1,$length);
}
$CODE_REFERENCIA  = codAleatorio();


for ($i=0; $i < count($ESTADO); $i++){
$InserData =("INSERT INTO tb_st (PRODUCTO, NUMERO_ORDEN, ESTADO,CODE_REFERENCIA) VALUES ('".$PRODUCTO."','".$NUMERO_ORDEN[$i]."','".$ESTADO[$i]."','".$CODE_REFERENCIA."')");
$resultadoInsertUser = mysqli_query($con, $InserData);
  
  }
?>