<?php

session_start();
include_once("UserNav.php");
include_once("dbConnection.php");
$cidy=$_SESSION['uid'];
?>
<style>
    input[type="checkbox"]{
        opacity: 1;
        -webkit-appearance:checkbox;

}
</style>
<script>

function getting(){
document.getElementById("gettotal").value ="100";
var pp=document.getElementById("print").value;
var pag=document.getElementById("page").value;
var siz=document.getElementById("size").value;
var ty=document.getElementById("type").value; 

if(pp=="Normal Print"){
    var data=document.getElementById("total").innerHTML="100";
    document.getElementById("gettotal").value ="100";

}
 if(pp=="Color Print"){
    var data=document.getElementById("total").innerHTML="590";
    document.getElementById("gettotal").value ="100";

}
 if(pag=="XX-Large"){
    var data=document.getElementById("total").innerHTML="280";
    document.getElementById("gettotal").value ="100";

}
 if(pag=="medium"){
    var data=document.getElementById("total").innerHTML="400";
    document.getElementById("gettotal").value ="100";

}
 if(pag=="Small"){
    var data=document.getElementById("total").innerHTML="110";
    document.getElementById("gettotal").value ="100";

}
 if(pag=="X-Large"){
    var data=document.getElementById("total").innerHTML="100";
    document.getElementById("gettotal").value ="100";

}
 if(ty=="SubTitile"){
    var data=document.getElementById("total").innerHTML="410";
    document.getElementById("gettotal").value ="100";

}
 if(ty=="MainTitle"){
    var data=document.getElementById("total").innerHTML="250";
    document.getElementById("gettotal").value ="100";

}
 if(ty=="Both"){
    var data=document.getElementById("total").innerHTML="150";
    document.getElementById("gettotal").value ="100";

}
 if(ty=="Normal"){
    var data=document.getElementById("total").innerHTML="100";
    document.getElementById("gettotal").value ="100";

}
}
  //  getamount();
</script>
<style>
#data{
    width:50%;
    float:right;
}
    </style>
    <!-- banner section -->
    <br><br><br>
<div class="w3l-grids-block-5 py-5">
        <section id="grids5-block" class="pt-md-4 pb-md-5 py-4 mb-5">
            <div class="container"><h4>Create Your Ad</h4>
            <hr style='color:red; height:10px;background-color: #d4236d;'>
                <div class="row mt-sm-5 pt-lg-2">
                <?php
$idq=$_REQUEST['ids'];

$qry = "SELECT `addads`.* FROM `addads` WHERE `addads`.`anid`='$idq'";
$result = mysqli_query($conn, $qry);
      if ($result->num_rows > 0) {
            if ($row = mysqli_fetch_array($result)) {
                ?>
                    <div class="col-lg-4 col-sm-6">
                        <div class=" grids5-info">
                            <div class="blog-info">
                            <br><input class="form-control form-control-lg" type="text" placeholder="AMount" id="print"  readonly value="<?php echo  $row['print'] ?>">
                            <br><input class="form-control form-control-lg" type="text" placeholder="AMount" id="size" readonly value="<?php echo  $row['size'] ?>">
                            <br><input class="form-control form-control-lg" type="text" placeholder="AMount" id="page" readonly value="<?php echo  $row['page'] ?>">
                            <br><input class="form-control form-control-lg" type="text" placeholder="AMount" id="type" readonly value="<?php echo  $row['type'] ?>">
                            </div>
                        </div>
                    </div>
                    <?php
         }
}
?>
                    <div class="col-lg-4 col-sm-6">
                    <form method="post" enctype="multipart/form-data">
                        <div class=" grids5-info">
                            <div class="blog-info">
                            <br><input class="form-control form-control-lg" type="text" required="" placeholder="font width" name="widthq" onkeyup="getting()">
                            <br><input class="form-control form-control-lg" type="text" required="" placeholder="font style" name="styleq">
                            <br><input class="form-control form-control-lg" type="text" required="" placeholder="line break" name="breakq">
                            <br><input class="form-control form-control-lg" type="text" required=""  placeholder="number of lines" name="linesq">
                            </div>
                        </div>                                 
</div>
            
                        <div class=" grids5-info">
                            <div class="blog-info">
                            <br><textarea class="form-control form-control-lg" type="text" placeholder="Your Description" name="desq" rows="8
                            "cols="23" required=""></textarea>
                        </div>
</div>            
                    
                <br><input class="form-control form-control-lg" type="hidden" name="addidq" required="" placeholder="font width" value="<?php echo  $idq ?>">
                Appox Amount   :<br><br><h2 id="total"></h2>
                <br><input  type="hidden" id="gettotal">
                
</div>
<br> 
<h6>Date</h6>
                <input type="date" class="form-control form-control-lg" id="vehicle1" name="newdate"  required="">
             <br> <input type="file" class="form-control form-control-lg"  id="vehicle1" name="img"  required="">
         <br><br>
         
         <div><u>Languages :</u><br>
            <br>  <input type="checkbox"  name="datas[]" value="English" >English
             <input type="checkbox"  name="datas[]" value="Malayalam">Malayalam
             <input type="checkbox"  name="datas[]" value="Hindi">Hindi
</div>
<div><br>
                <u>District :</u><br><br><div>
            <input type="checkbox"  name="color[]" value="Kannur" >Kannur
             <input type="checkbox"  name="color[]" value="Kasaragod">Kasaragod
             <input type="checkbox"  name="color[]" value="Kollam">Kollam
             <input type="checkbox"  name="color[]" value="Kottayam">Kottayam
             <input type="checkbox"  name="color[]" value="Kozhikode">Kozhikode
             <input type="checkbox"  name="color[]" value="Malappuram">Malappuram
             <input type="checkbox"  name="color[]" value="Palakkad">Palakkad
             <input type="checkbox"  name="color[]" value="Pathanamthitta">Pathanamthitta
             <input type="checkbox"  name="color[]" value="Thiruvananthapuram">Thiruvananthapuram
             <input type="checkbox"  name="color[]" value="Thrissur">Thrissur
             <input type="checkbox"  name="color[]" value="Wayanad">Wayanad
             <input type="checkbox"  name="color[]" value="Alappuzha">Alappuzha<br>
             <input type="checkbox"  name="color[]" value="Ernakulam">Ernakulam
             <input type="checkbox"  name="color[]" value="Idukki">Idukki
</div>
</div>
              
<button class="btn button-style" type="submit" name="Requestdata">Request
                        <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                    </button>
            <br><input class="form-control form-control-lg" type="hidden" name="addidq" required="" placeholder="font width" value="<?php echo  $idq ?>">
            </form>                                               
            <?php
            if (isset($_REQUEST['Requestdata'])) {
                $nam= $_REQUEST['addidq'];
                $em = $_REQUEST['widthq']; 
                $num=$_REQUEST['styleq'];
                $add=$_REQUEST['breakq'];
                $pa=$_REQUEST['linesq'];
                $ios=$_REQUEST['desq'];
                $name = $_REQUEST['color'];
                $named = $_REQUEST['datas'];
                $newdate=$_REQUEST['newdate'];
                $date = date('d-m-y h:i:s');
                // $e=$_REQUEST['e'];
                // $m=$_REQUEST['m'];
                // $h=$_REQUEST['h'];
             //   $lang=$e+","+$m+","+$h;
             $lang="";
             foreach ($named as $datas){ 
                $lang .= $datas." , ";
               //  echo $color."<br/>";
                // echo $distr."<br/>";
             }
             $distr="";
                foreach ($name as $color){ 
                   $distr .= $color." , ";
              
                }
                
                echo  $nam;
                $st="no";
                $upfold = "images/";
                $mimage = $upfold . basename($_FILES['img']['name']);
                move_uploaded_file($_FILES['img']['tmp_name'],$mimage);

                $qryReg="INSERT INTO `addrequest`(`anid`,`uid`,`width`,`style`,`break`,`line`,`des`,`status`,`rdate`,newdate,lang,distr,images)values('$nam','$cidy','$em','$num','$add','$pa','$ios','$st','$date','$newdate','$lang','$distr','$mimage')";    
            echo  $qryReg;
               if ($conn->query($qryReg) == TRUE) {
                    echo "<script>alert('Request Success');window.location='previewdata.php'</script>";
                } else {
                    echo "<script>alert('Request has error! Try Again');</script>";
                }
            }
            ?>
                    </div> 
   
    </div>

        </div>
        </section>
    </div>
<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "footer.php";
include_once("footer.php");
?>