<?php
session_start();
include_once("UserNav.php");
include_once("dbConnection.php");
?>
<style>
#data{
    width:50%;
    float:right;
}
    </style>
    <!-- banner section -->
    <br><br><br>
    <!-- banner bottom section -->
    <div class="w3l-index-block4 pb-5">
        <div class="features-bg pb-lg-5 pt-lg-4 py-4">
            <div class="container">
            <br><br><br>
                <div class="title-main text-center mx-auto mb-md-4">
                    <h4 class="title-big">My Advertisment Status</h4>
                </div>
                <hr style='color:red; height:4px;background-color: #d4236d;'>

                <br><br><br>
                <?php
            $cidv=$_SESSION['uid'];
        $qry ="SELECT `addads`.*,`addrequest`.*,`category`.*,`news_reg`.* FROM `addads`,`addrequest`,`category`,`news_reg` WHERE `addads`.`cid`=`category`.`cid` AND `addrequest`.`anid`=`addads`.`anid` AND `news_reg`.`nid`=`addads`.`nid` AND `addrequest`.`uid`='$cidv'";        
//    echo $qry;
   
        $result = mysqli_query($conn, $qry);
    ?>
 <div class="row">
<?php
      if ($result->num_rows > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $check=$row['status'];
                ?>
                <div class="col-lg-5 features15-col-text">
                        <a href="" class="d-flex feature-unit align-items-center">
                            <div class="col-12">
                            <?php
                if($check=="yes"){
echo" <button type='submit' class='form-control'  style='padding-left: 2.5rem; padding-right: 2.5rem;background-color: #027020;color:white' name='login'>
Status :Accepted </button > ";
                }else{
                echo "
                    <button type='submit' class='form-control'  style='padding-left: 2.5rem; padding-right: 2.5rem;background-color: #c81538;color:white' name='login'>
                 Status : Pending </button >";
                }
                ?><br><div class="features15-para">
<h3>  Company Details</h3><br>
<p> Name :<?php echo  $row['name'] ?>  </p>
                                    <p>Email :<?php echo  $row['email'] ?> </p>
                                    <p>Phone Number :<?php echo  $row['phone'] ?>  </p>
                                    <hr style='color:red; height:2px;background-color: #d4236d;'>
                                <h4><?php echo  $row['catname'] ?> </h4>
                                    <h6><?php echo  $row['print'] ?>  </h6>
                                    <h4>paper size :<?php echo  $row['size'] ?> </h4>
                                    <h6>Pages :<?php echo  $row['page'] ?>  </h6>
                                    <h4>Page type :<?php echo  $row['type'] ?> </h4>
                                    <h6>Font width :<?php echo  $row['width'] ?>  </h6>
                                    <h4>Font style :<?php echo  $row['style'] ?> </h4>
                                    <h6>line break :<?php echo  $row['break'] ?>  </h6>
                                    <h4>No Of Lines :<?php echo  $row['line'] ?> </h4>
                                    <p><?php echo  $row['description'] ?></p>
                                    <h6>Request Time :<?php echo  $row['rdate'] ?> </h6>
                                </div>   
                    
                            </div> 
                      

                </a>   
            
                    </div>
<?php
     }
} else {
    echo "  <center> <h2 style='color: red;'>.... No Data Found ...</h2></center> ";
}
?>

                </div>
            </div>
        </div>
    </div>
    <!-- footer -->       
<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "footer.php";
include_once("footer.php");
?>