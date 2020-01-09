<?php
include 'conn.php';
?>

<!DOCTYPE html>
<html>
 <head>
  <title>Course Prefrence</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script>  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
 </head>
 <body>
  <br /><br />
  <div class="container" style="width:600px;">
   <h2 align="center">Welcome to the College Selection on the Basis of Course prefrences</h2>
   <br /><br />
   <form method="post" id="framework_form" action="insert.php">
    <div class="form-group">
     <label>Enter Your Name</label>
  	  <input type="text" name="username"><br>
    </div>
    <div class="form-group">
     <label>Select from following Courses</label>
     <select id="framework" name="framework[]" multiple class="form-control" >
      <?php
           $conn = $pdo->open();
           try{
		 	    $stmt = $conn->prepare("SELECT course_name FROM course");
	            $stmt->execute();
		      }
	        catch(PDOException $e)
			{
		      echo "There is some problem in connection: " . $e->getMessage();
	        }
	        while($row = $stmt->fetch())
            {
			  $opt=$row["course_name"];
              echo "<option value='$opt'>".$opt."</option>";
			  
            }
       ?>
     </select>
    </div>
    <div class="form-group">
     <input type="submit" class="btn btn-info" name="submit" value="Submit" />
    </div>
   </form>
   <br />
  </div>
 </body>
</html>

<script>
$(document).ready(function(){
 $('#framework').multiselect({
  nonSelectedText: 'Select Courses',
  enableFiltering: true,
  enableCaseInsensitiveFiltering: true,
  buttonWidth:'400px'
 });
});
</script>