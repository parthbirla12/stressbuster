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
    $phone = $_REQUEST['phone'];
    $subject = $_REQUEST['subject'];
    $message = $_REQUEST['message'];
    
    // Performing insert query execution
    // here our table name is phones
    $sql = "INSERT INTO indexuser VALUES ('$name','$email',
      '$phone','$subject','$message')";
    
    if(mysqli_query($conn, $sql)){
        header("location: index.html");
    } else{
      echo "ERROR: Hush! Sorry $sql. "
        . mysqli_error($conn);
    }
    
    // Close connection
    mysqli_close($conn);
    ?>
