<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.all.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.min.css">

<?php
require("config.php");
$PKCLI_ID       = $_POST['PKCLI_ID'];
$COD_CODIGO     = $_POST['COD_CODIGO'];
$COD_ESTADO     ="Activo";
$CANT_USO       =0;


$dataCode = count($COD_CODIGO);
if($dataCode >0){
    for ($i=0; $i <$dataCode; $i++) { 

    //Verifico si existe el codigo
    $sqlCode  = ("SELECT *  FROM tbl_codigo WHERE COD_CODIGO='$COD_CODIGO[$i]' ");
    $queryCode  	= mysqli_query($con, $sqlCode);
    if(mysqli_num_rows($queryCode)>0){
        //echo 'Ya existe el codigo';
        }else{
            $queryInsertCode = ("INSERT INTO tbl_codigo(FKCOD_ID_CLI_ID, COD_CODIGO, COD_ESTADO, CANT_USO) VALUES ('" .$PKCLI_ID. "','" .$COD_CODIGO[$i]. "','".$COD_ESTADO."','".$CANT_USO."')");
            $resultado = mysqli_query($con, $queryInsertCode);
        }
    } 
echo '<p style="color:#fff;"></p>';
echo "<script type='text/javascript'>
  Swal.fire(
  'Felicitaciones!',
  'Operación realizada con exito',
  'success'
).then((result) => {
      if (result.isConfirmed) {
        location.href='index.php';
      } 
    })
</script>";
}else{
    echo 'Error';
} 
?>
