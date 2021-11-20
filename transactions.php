<html>
   <head>
        <title>SILVER COIN BANK</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <link href="INDEX.CSS" rel="stylesheet" type="text/css"/>
         <style type="text/css">
             button{
                 transition: 1.5%;
             }
             button:hover{
                 background-color: blueviolet;
                 color: white;
             }
         </style>
    </head>
    <body>
        <div>
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html"><span class="glyphicon glyphicon-usd"></span>SILVER COIN BANK</a>
                </div>
                <div>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index.html"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                        <li><a href="CUSTOMERS.php"><span class="glyphicon glyphicon-user"></span> Customers</a></li>
                        <li><a href="transactions.php"><span class="glyphicon glyphicon-transfer"></span> Transactions</a></li>
                        <li><a href="aboutme.html"> About Me</a></li>
                    </ul>
                </div>
            </div> 
        </nav>
        </div>
    <body> 
      <div id="tran_his">
        <div class="container">
            <center>
                <h1 style="color:black;">TRANSACTION HISTORY</h1>
                <br>
                <table class="table table-hover table-striped table-condensed table-bordered">
                    <tr>
                        <th>S.NO.</th>
                        <th>SENDER</th>
                        <th>RECEIVER</th>
                        <th>AMOUNT</th>
                        <th>DATE & TIME</th>
                    </tr>
                    <?php
                    $servername="localhost";
                    $username="id17900296_ashwini123";
                    $password="@ashu22#Dj03";
                    $dbname= "id17900296_bank";
                    $con= mysqli_connect($servername, $username, $password, $dbname);
                    if(!$con)
                    {
                     die("ERROR! Couldn't connect to the database. ".mysqli_connect_error());
                    }
                    $sql="select * from transactions";
                    $query=mysqli_query($con,$sql);
                    while($rows=mysqli_fetch_assoc($query))
                    {
                    ?>
                    <tr>
                      <td><?php echo $rows['sno'];?></td>  
                      <td><?php echo $rows['sender'];?></td>
                      <td><?php echo $rows['receiver'];?></td>
                      <td><?php echo $rows['amount'];?></td>
                      <td><?php echo $rows['datetime'];?></td>
                    </tr>
                    <?php
                    }
                    ?>
                </table>
            </center>
        </div>
       </div>
        <footer class="footer">
            <center>
                <div class="container">
                    ©2021. Made By BYLUPPALA ASHWINI.<br> Under The Sparks Foundation Internship.
                </div>
            </center>
        </footer>
        </body>
             
</html>
        