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
                    <h4 class="title-big"> Advertisment Preview</h4>
                </div>
                <hr style='color:red; height:4px;background-color: #d4236d;'>

                <br><br><br>
                <?php
            $cidv=$_SESSION['uid'];
            $qrys = "select rid from addrequest order by rid desc";
            $re = mysqli_query($conn, $qrys);
            $rowd= mysqli_fetch_array($re);
            $get=$rowd['rid'];

        $qry = "select *from addrequest where rid='$get'";
    $result = mysqli_query($conn, $qry);
    ?>
 <div class="row">
<?php
      if ($result->num_rows > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $check=$row['status'];
                ?>
                <div class="col-lg-10 features15-col-text">
                        <a href="" class="d-flex feature-unit align-items-center">
                            <div class="col-12">
                            <?php
                if($check=="yes"){
echo" <button type='submit' class='form-control'  style='padding-left: 2.5rem; padding-right: 2.5rem;background-color:block ;color:block' name='login'>
Status :Accepted </button > ";
                }else{
                // echo "
                //     <button type='submit' class='form-control'  style='padding-left: 2.5rem; padding-right: 2.5rem;background-color: block;color:block' name='login'>
                //  Your advertisment Preview AND Current Status is pending </button >";
                // 
            }
                ?><br>
                                <div class="features15-para">
                                <?php
                          echo "<img src='./". $row['images']. "' height='400px' width='800px'/>";
                            ?><br><br><br> <h4> <?php echo  $row['des'] ?></h4><br><br>
                                    <h6>Request Date & Time :<?php echo  $row['rdate'] ?> </h6>
                                    <h6>Today Date & Time :<?php 
                                                    $date = date('d-m-y h:i:s');

                                    echo  $date ?> </h6>

                                    <hr style='color:red; height:4px;background-color: #d4236d;'>

                            <div class="row">
                                <div class="col">
                                    <h4>paper size :<?php echo  $row['style'] ?> </h4>
                                    <h4>Page type :<?php echo  $row['status'] ?> </h4>
                                    <h6>Font width :<?php echo  $row['width'] ?>  </h6>
                                    <h4>Font style :<?php echo  $row['style'] ?> </h4>
                                    <h6>line break :<?php echo  $row['break'] ?> </h6>
                                    <h4>No Of Lines :<?php echo  $row['line'] ?> </h4>
            </div>
            <div class="col">

                                    <h6>Description :<br><?php echo  $row['distr'] ?> </h6>
                                    <h6>Languages: <br><?php echo  $row['lang'] ?> </h6>
                                    <h6>Date of News :<?php echo  $row['newdate'] ?> </h6>
            </div>
                         </div>
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