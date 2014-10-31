<?php
    $conexion=mysql_connect("localhost","root","")or die("Error de conexion");
    $base=mysql_select_db("mvc",$conexion) or die("Error de base");
    mysql_query("SET NAMES 'UTF8'");
?>