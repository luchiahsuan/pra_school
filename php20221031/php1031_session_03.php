<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>session</title>
</head>

<body>
    <?php
    session_start();

    // session_start();
    // $_SESSION['name']='LULU';

    echo "HI ";
    echo $_SESSION['name'];

    ?>

</body>

</html>