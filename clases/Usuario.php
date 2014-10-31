<?php
class Usuario {
private $name;
    //funcion que obtiene el nombre asignado
    public function getUsuario(){
        echo "<br>Mostrar Usuario: ".$this->name;
    }
    //funcion que asigna un nombre
    public function setUsuario(){
        $this->name = "";
        return $this->name;
    }
    public function ConsultarDatos()
    {
        $sql01="SELECT * FROM personascontrol WHERE estatus = 1 ORDER BY IdPersona ASC";
        $consulta = mysql_query($sql01) or die ("error 1");
        echo "<div class=table-resposive align=center>";
        echo "<table class=\*table table-striped\ border=1>";
        echo "<tr><td colspan=5 align=center>Resultados</td></tr>";
        echo"<tr><td>Numero</td><td>Nombre(s)</td><td>Apellido Paterno</td><td>Apellido Materno</td><td>Nivel</td>";
        while($field = mysql_fetch_array($consulta)){
            $this->IdPersona = $field['IdPersona'];
            $this->Nombre = $field['nombre'];
            $this->ApellidoPaterno = $field['Apat'];
            $this->ApellidoMaterno = $field['Amat'];
            $this->Nivel = $field['nivel'];
            switch($this->Nivel){
                case 1:
                    $type = "Administrador";
                    break;
                case 2:
                    $type = "Maestro";
                    break;
                case 3:
                    $type = "Alumno";
                    break;
            }
            echo "<tr><td>$this->IdPersona</td><td>$this->Nombre</td><td>$this->ApellidoPaterno</td><td>$this->ApellidoMaterno</td><td>$type</td></tr>";
        }
        echo "</table>";
        echo "</div>";
    }
}