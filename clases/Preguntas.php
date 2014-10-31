<?php
class Preguntas {
    public function Mostrarpreguntas(){
        $numPregs = 10;
        echo "<p><h2>Bienvenido alumno</h2></p>\n";
        $pregsInBD = mysql_query("select count(idp) as 'num' from preguntas");
        $pregsExistentes = mysql_result($pregsInBD,0,'num');
        for($r=0;$r<$numPregs;$r++) $vector[$r]=0;
        for($r=0;$r<$numPregs;$r++){
            $alea=rand(1,$pregsExistentes);
            $bandera=true;
            for($f=0;$f<$r;$f++)
                if($vector[$f]==$alea){
                    $bandera=false;
                    break;
                }
            if(!$bandera){ $r--; continue; }
            $vector[$r]=$alea;
        }
        echo '<form action="califica.php" method="post">'."\n";
        for($r=0;$r<$numPregs;$r++){
            $pregActu = mysql_query("select preguntas from preguntas where id_p='$vector[$r]'");
            $txtPregActu = mysql_result($pregActu,0,'preguntas');
            $tpPreg = mysql_query("select respuesta from preguntas where id_p='$vector[$r]'");
            $tipoPreg = mysql_result($tpPreg,0,'respuesta');
            echo "<p>\n";
            echo "".($r+1).") ".$txtPregActu;
            if($tipoPreg==1){
                echo ' <input type="text" name="'.$r.'">'."\n";
                echo ' <input type="hidden" name="preg'.($r+1).'" value="'.$vector[$r].'">'."\n";
            }
            else{
                $consOps = mysql_query("select id_r from calificar where id_p='$vector[$r]'");
                $numResp = mysql_num_rows($consOps);
                echo "\n<br>";
                echo ' <input type="hidden" name="preg'.($r+1).'" value="'.$vector[$r].'">'."\n";
                for($hui=0;$hui<$numResp;$hui++){
                    $consResp = mysql_query("select respuesta from respuestas where id_r='".mysql_result($consOps,$hui,'id_r')."'");
                    $valor= mysql_result($consResp,0,'respuesta');
                    echo '<input type="radio" name="'.$r.'" value="'.$valor.'">'.$valor."<br>\n";
                }
            }
            echo "</p>\n";
        }
        echo '<input type="submit" value="Guardar">'."\n";
        echo '</form>'."\n";

    }
}
?>