<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="/app/css/Accueil fil rouge css/Accueil Fil rouge.css" rel="stylesheet">
        <link href="/app/css/Accueil fil rouge css/Accueil Fil rougemob.css" rel="stylesheet">
        <link href="/app/css/Accueil fil rouge css/Accueil Fil rougetab.css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Crete+Round" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Fil rouge.</title>
    </head>
    
    <body class="body">
        
        <?php include 'header.php'; ?>

        <main id="corp">
        
            <?php include $view.'.php';?>

        </main>

        <?php include 'footer.php'; ?>   
    </body>

</html>