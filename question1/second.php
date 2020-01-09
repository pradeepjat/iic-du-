<?php 
 include 'conn.php';
?>


<?php 
      if(isset($_POST["groupit"]) && isset($_POST["groupopt"]))
     {
		
	    if(isset($_POST["groupopt"]))
 	    {
		   $firstoption = $_POST["groupopt"];
           $conn = $pdo->open();
           try
		     {
		 	   $stmt = $conn->prepare("SELECT stu_id,student_name,course,age,gender FROM student ORDER BY $firstoption");
	           $stmt->execute();
		     }
	        catch(PDOException $e)
			{  
		      echo "There is some problem in connection: " . $e->getMessage();
	        }
	        echo "<h3>"."Grouping on the basis of ".$firstoption."</h3>";
		    echo "<br>";
			echo "<table>
                       <tr>
                          <th>student Name</th>
                          <th>Courses</th>
						  <th>Age</th>
						  <th>Gender</th>
                        </tr>";
					
		            while($row = $stmt->fetch())
					{
						 echo "<tr>";
                         echo "<td>" . $row['student_name'] . "</td>";
                         echo "<td>" . $row['course'] . "</td>";
						 echo "<td>" . $row['age'] . "</td>";
						 echo "<td>" . $row['gender'] . "</td>";
                         echo "</tr>";
						
					  
					}
					echo "</table>";
	        
	    }
	    else
	    {
		   echo "<font color = 'red'>Choose an Option</font>";
	    }
    }
	 
 if(isset($_POST["groupit"]) && isset($_POST["groupopt"]))
 {
	$first = $_POST["groupopt"];
	echo "<h1>"."B)Group the Group:"."</h1>"."<br>";
    echo '<form method="post">'; 
    $ar = array("course","age","gender");
	foreach($ar as $i)
	{
		if($i != $_POST["groupopt"])
		{
			if($i =="course")
			{
				echo '<input type="radio" name="secondgroup" value= "course">'."course"."<br>";
			}	
			
			if($i =="age")
			{
				echo '<input type="radio" name="secondgroup" value= "age">'."age"."<br>";
			}
			if($i =="gender")
			{
				echo '<input type="radio" name="secondgroup" value= "gender">'."gender"."<br>";
			}
	       
		}
    } 
    echo "<br>";
    echo '<input type="submit" name= "groupitt" value="group"';
    echo "<br>";
    echo "</form>";
 }
 
  if(isset($_POST["groupitt"]) && isset($_POST["secondgroup"]))
     {
	    if(isset($_POST["secondgroup"]))
 	    {
		   $secondoption = $_POST["secondgroup"];
		   
		   if($secondoption == "age")
		   {
			   $try1 = "course";
		   }
		   else
           {			   
		       if($secondoption == "course")
		       {
			     $try1 = "gender";
		       }
			   else
			   {
				 $try1 = "age";  
			   }
		   }
           $conn = $pdo->open();
           try
		     {
		 	   $stmt2 = $conn->prepare("SELECT stu_id,student_name,course,age,gender FROM student ORDER BY $secondoption,$try1");
	           $stmt2->execute();
		     }
	        catch(PDOException $e)
			{  
		      echo "There is some problem in connection: " . $e->getMessage();
	        }
			
			echo "<br>";
			echo "<table>
                       <tr>
                          <th>student Name</th>
                          <th>Courses</th>
						  <th>Age</th>
						  <th>Gender</th>
                        </tr>";
					
		            while($row2 = $stmt2->fetch())
					{
						 echo "<tr>";
                         echo "<td>" . $row2['student_name'] . "</td>";
                         echo "<td>" . $row2['course'] . "</td>";
						 echo "<td>" . $row2['age'] . "</td>";
						 echo "<td>" . $row2['gender'] . "</td>";
                         echo "</tr>";
						
					  
					}
					echo "</table>";
        }
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