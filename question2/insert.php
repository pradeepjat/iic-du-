<?php
include 'conn.php';
 if(isset($_POST["username"]))
 {
	 $name = $_POST["username"];
	 echo "<h2>"."hey ".$name." The  following Colleges suits your requirement"."</h2>"."<br>";
 }
 if(isset($_POST["framework"]))
 {
	 $framework = '';
	 foreach($_POST["framework"] as $row)
     {
       $framework .= $row . ', ';
     }
     $framework = substr($framework, 0, -2);
	  $conn = $pdo->open();
      try{
		 $stmt2 = $conn->prepare("SELECT college_id,course_id FROM course_offered WHERE course_id IN (SELECT course_id FROM course WHERE course_name IN ('". implode("', '", $_POST['framework']). "'))");
	     $stmt2->execute();
	    }
	    catch(PDOException $e)
		{
		   echo "There is some problem in connection: " . $e->getMessage();
		
	    }
		
		try{
		 $stmt3 = $conn->prepare("CREATE TEMPORARY TABLE temp_table_1 (`collegeName` varchar(50),`courseName` varchar(50))");
	     $stmt3->execute();
	    }
	    catch(PDOException $e)
		{
		   echo "There is some problem in connection: " . $e->getMessage();
	    }
		
		while($row3 = $stmt2->fetch())
		{
			try{
				 $temp = $row3["college_id"];
		         $stmt4 = $conn->prepare("SELECT college_name FROM colleges WHERE college_id = $temp");
	             $stmt4->execute(); 
				 
				 $temp1 = $row3["course_id"];
		         $stmt5 = $conn->prepare("SELECT course_name FROM course WHERE course_id = $temp1");
	             $stmt5->execute();
				 
	           }
	           catch(PDOException $e)
		      {
		       echo "There is some problem in connection: " . $e->getMessage();
	           }
			   
			   $collegenam = $stmt4->fetch();
			   $collegenam = implode("','",$collegenam);
		       $coursenam = $stmt5->fetch();
			   $coursenam = implode("','",$coursenam);
			   
			   try
			   {
		            $stmt6 = $conn->prepare("INSERT INTO temp_table_1(collegeName,courseName) VALUES('$collegenam','$coursenam')");
	                $stmt6->execute(); 				 
	            }
	            catch(PDOException $e)
		        {
		          echo "There is some problem in connection: " . $e->getMessage();
	            }
				
		}
		
		    try
			   {
		          $stmt7 = $conn->prepare("SELECT collegeName,courseName FROM temp_table_1 ORDER BY collegeName");
	              $stmt7->execute(); 				 
	            }
	            catch(PDOException $e)
		        {
		          echo "There is some problem in connection: " . $e->getMessage();
	            }
				
				
				echo "<table>
                       <tr>
                          <th>College Name</th>
                          <th>Your Courses</th>
                        </tr>";
					$row5 = $stmt7->fetch(); 
					$previouscollege = $row5["collegeName"];
				    $previouscourse = $row5["courseName"];
				    echo "<tr>";
                    echo "<td>" . $previouscollege . "</td>";
                    echo "<td>" . $previouscourse . "</td>";
                    echo "</tr>";
		            while($row6 = $stmt7->fetch())
					{
					  if($previouscollege == $row6["collegeName"])
					  {
						  echo "<tr>";
                          echo "<td>" ." ". "</td>";
                          echo "<td>" . $row6['courseName'] . "</td>";
                          echo "</tr>";
					  }
					  else
					  {
						$previouscollege = $row6["collegeName"];
						 echo "<tr>";
                         echo "<td>" . $row6['collegeName'] . "</td>";
                         echo "<td>" . $row6['courseName'] . "</td>";
                         echo "</tr>";
						
					  }
					}
					echo "</table>";
 }
 
 
   $conn = $pdo->open();
    try{
		 $stmt = $conn->prepare("INSERT INTO user(user_name,preferences) VALUES('$name','.$framework.')");
	     $stmt->execute();
	    }
	catch(PDOException $e){
		echo "There is some problem in connection: " . $e->getMessage();
	}
?>

<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
</html>