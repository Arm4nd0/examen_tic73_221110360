<?php
require ('bd/bd.php');
class Valida{
    private $User;
    private $Password;

    public function ValidaUser($User,$Password){
        $user= $User;
        $psw=$Password;
        if ($user==""or $psw=="")
        {
            $msg="Los campos deben ir llenos";
            print "<meta http-equiv='refresh' content='0; url=.php?msg=$msg'>";
            exit;
        }
        $sql="SELECT * FROM usuarios WHERE nombre='$user' AND password='$psw'";
        $consulta=mysql_query($sql)or die ("error de consulta");
        $cuantos=mysql_num_rows($consulta);
        if($cuantos==0)
        {
            $msg='El usuario o contraseña no son correctos';
            print "<meta http-equiv='refresh' content='0; url=index.php?msg=$msg'>";
            exit;
        }
        else
        {
            $idu=mysql_result($consulta,0,'nombre');
            $activo=mysql_result($consulta,0,'estatus');
            if($activo== 0 )
            {
                $msg='El usuario no esta activo, consulte al administrador';
                print "<meta http-equiv='refresh' content='0; url=index.php?msg=$msg'>";
                exit;
            }
            else
            {
                $ide=("$idu");
                $acceso=new Valida();
                $acceso->Acceso($ide);
            }
        }
    }
    public function Acceso($ide){
        $idu=$ide;
        session_start();
        $_SESSION['idu']=$idu;
        $_SESSION['acceso']=1;
        SetCookie('idu2',$idu);
        SetCookie('acceso2',1);
        $conexion=mysql_connect("localhost","root","")or die("Error de conexion");
        $base=mysql_select_db("mvc",$conexion) or die("Error de base");
        print "<meta http-equiv='refresh' content='0; url=login.php'>";
        exit;
    }
}
?>