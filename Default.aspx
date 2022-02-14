

<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Restaraunt Menu</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
     

  </head>
  <body onload="addOptions();", class="bg-dark" >
    <div class="container">   
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Restaraunt Menu</div>
        <div class="card-body" id ="cardspin">
          <form novalidate="" action="#" method="POST" id="myForm" autocomplete="off">
            <div class="form-group">               
                 Salad: <input type="checkbox" id="salad" runat="server" >
                      <select id="Toppings">
                          <option></option>
                           <option></option>
                           <option></option>
                         </select><br /><br />
                 Entree: <input type="checkbox" id="Entree" onclick="myFunction()">
                <select id="Entreechoices">
                          <option></option>
                          <option></option>
                          <option></option>
                 </select><br /><br />
                 Soup: <input type="checkbox" id="soup" onclick="myFunction()">
                <select id="Soup">
                          <option></option>
                          <option></option>
                          <option></option>
                </select><br /><br />
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="modal"></div>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>      
    <script src="js/bootbox.all.min.js"></script>
    <script src="js/bootboxError.js"></script>
    <script src="js/jquery.pleaseWait.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT" crossorigin="anonymous"></script>
    <script src="js/jquery.toast.js"></script>

      <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="js/jquery.backstretch.min.js"></script>
   });
    <script>       
        $('#salad').click(function () {
            if (this.checked)        
                $('#Toppings').show("fast");
            else
                $('#Toppings').hide("fast");
        });
        $('#Entree').click(function () {
            if (this.checked)
                $('#Entreechoices').show("fast");
            else
                $('#Entreechoices').hide("fast");
        });
        $('#soup').click(function () {
            if (this.checked)
                $('#Soup').show("fast");
            else
                $('#Soup').hide("fast");
        });
       
function appendData(data) {
  var mainContainer = document.getElementById("myData");
  for (var i = 0; i < data.length; i++) {
    var div = document.createElement("div");
    div.innerHTML = 'Name: ' + data[i].firstName + ' ' + data[i].lastName;
    mainContainer.appendChild(div);
  }
}

    </script>
  </body>

</html>
