<?php
    require ('helpers.php');
    require ('templete/header.php');
    require ('clases/Preguntas.php');
    require ('bd/bd.php');

    if(empty($_GET['url']))
        $_GET['url']='home';
        controller($_GET['url']);
?>