<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP月曆</title>
    <style>
        table {
            border: 3px double black;
        }

        td {
            border: 1px solid lightgray;
        }
    </style>
</head>

<body>
    <h1>月曆</h1>
    <?php
    $year=date("Y");
    $mon=date("n");
    // echo $year.'-'.$mon;
    // $fisD=$year.'-'.$mon.'-1';
    $fisD=date("Y-m-1");
    $fisDWK=date('N',strtotime($fisD));
    $monDs=date("t",strtotime($fisD));
    echo $monDs;
    echo "<br>";
    echo $fisD;
    echo "<br>";
    echo "本月第一天是星期:";
    echo$fisDWK;
    ?>
    <table>
<td>一</td>
<td>二</td>
<td>三</td>
<td>四</td>
<td>五</td>
<td>六</td>
<td>七</td>

        <?php
for($i=1;$i<=7;$i++){
    echo "<tr>";
    for($j=1;$j<=7;$j++){
        if($i==1){
            if($j>=$fisDWK){
                echo "<td>";
                echo ($i-1)*7+$j-($fisDWK-1);
                echo "</td>";
            }else{
                echo "<td></td>";
            }
        }else{
            $date=($i-1)*7+$j-($fisDWK-1);
            echo "<td>";
            if($date<=$monDs){
                echo $date;
            }
            echo "</td>";
        }
    }
    echo "</tr>";
}

        ?>
    </table>



</body>

</html>