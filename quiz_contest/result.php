<?php 

$answer = $_POST['ans'];
 
if($answer == "ans1")
 {   
       
   header('location: question2.html'); 
    
}

else
 {
   
 header('location: last.html');
}         
 
?>