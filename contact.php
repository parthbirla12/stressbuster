<?php

// servername => localhost
// username => root
// password => empty
// database name => product
$conn = mysqli_connect("localhost", "root","", "demo");

// Check connection
if($conn === false){
  die("ERROR: Could not connect. "
    . mysqli_connect_error());
}

// Taking all 5 values from the form data(input)
$name = $_REQUEST['name'];
$email = $_REQUEST['email'];
$message = $_REQUEST['message'];

// Performing insert query execution
// here our table name is phones
$sql = "INSERT INTO contact VALUES ('$name','$email','$message')";

if(mysqli_query($conn, $sql)){

    header("location: /contact.html");
} else{
  echo "ERROR: Hush! Sorry $sql. "
    . mysqli_error($conn);
}

// Close connection
mysqli_close($conn);
?>
