<!DOCTYPE html>
<html>
<head>
  <title>Formulario Dinamico</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
 
<body>


<div class="container mt-5">
<form action="recib.php" method="POST">

  <div class="row text-right">
    <div class="col-md-12">
      <button class="btn add-btn btn-info">+</button>
    </div>
  </div>

  <div class="form-row">
    <div class="col-md-3">
      <label>PRODUCTO</label>
      <select name="PRODUCTO" class="form-control">
        <option value="Pan">Pan</option>
        <option value="Harina">Harina</option>
        <option value="Pasta">Pasta</option>
      </select>
    </div>

    <div class="col-md-3">
      <label># ORDEN</label>
      <input type="number" name="NUMERO_ORDEN[]" class="form-control">
    </div>

    <div class="col-md-3">
      <label>ESTADO</label>
      <select name="ESTADO[]" class="form-control">
        <option value="ACTIVO">ACTIVO</option>
        <option value="INACTIVO">INACTIVO</option>
      </select>
    </div>
</div>

<div class="newData"></div>
  <div class="row text-center mt-5">
     <div class="col-md-12">
    <input type="submit" class="btn btn-primary" value="Registrar"/>
  </div>
  </div>
</form>
</div>
 
 
  <script type="text/javascript">
    $(function () { 
      var i = 1;
      $('.add-btn').click(function (e) {
        e.preventDefault();
          i++;

        $('.newData').append('<div id="newRow'+i+'" class="form-row">'
            +'<div class="col-md-6">'
              +'<label># ORDEN</label>'
              +'<input type="number" name="NUMERO_ORDEN[]" value="'+i+'" class="form-control">'
            +'</div>'
            +'<div class="col-md-6">'
              +'<label>ESTADO</label>'
              +'<select name="ESTADO[]" class="form-control">'
              +'<option value="">Selecciona un estado</option>'
              +'<option value="ACTIVO">ACTIVO</option>'
              +'<option value="INACTIVO">INACTIVO</option>'
              +'</select>'
            +'</div>'
            +'<a href="#" class="remove-lnk" id="'+i+'">Eliminar "'+i+'"</a>'
            +'</div>'
          );  
      });
 

       $(document).on('click', '.remove-lnk', function(e) {
         e.preventDefault();

          var id = $(this).attr("id");
           $('#newRow'+id+'').remove();
        });
 
    });
  </script>
</body>
</html>