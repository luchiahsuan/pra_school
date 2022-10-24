<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>計算結果</title>
    <style>
        table,
        tr,
        td {
            border: 1px solid orange;
            text-align: center;
        }
    </style>
</head>

<body>
    <h1>計算結果：</h1>
    <?php
    $height = $_GET['height'];
    $weight = $_GET['weight'];

    echo "身高為" . $height . "<br>";
    echo "體重為" . $weight . "<br>";

    $bmi = round($weight / (($height / 100) * ($height / 100)), 1);
    echo "<h3>BMI為" . $bmi . "</h3>";

    if ($bmi < 18.5) {
        $level = "體重過輕";
    } else if ($bmi < 24) {
        $level = "健康體位";
    }else if ($bmi < 27) {
        $level = "過重";
    }else if ($bmi < 30) {
        $level = "輕度肥胖";
    }else if ($bmi < 35) {
        $level = "中度肥胖";
    }else{$level = "重度肥胖";}
echo "你的體位判定為：".$level;

    ?>

    <div></div>
    <div>
        
    </div>
    <br>
    <table>
        <tr>
            <td>成人肥胖定義</td>
            <td>身體質量指數(BMI)(kg/m^2)</td>
            <td>腰圍(cm)</td>
        </tr>
        <tr>
            <td>體重過輕</td>
            <td>BMI < 18.5</td>
            <td></td>
        </tr>
        <tr>
            <td>健康體位</td>
            <td>18.5 <= BMI < 24 </td>
            <td></td>
        </tr>
        <tr>
            <td>體位異常</td>
            <td>
                過重：24 <= BMI < 27 <br>
                    輕度肥胖：27 <= BMI < 30 <br>
                        中度肥胖：30 <= BMI < 35 <br>
                            重度肥胖：BMI >= 35 <br>
            </td>
            <td>
                男性：>= 90 公分<br>
                女性：>= 80 公分
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
</body>

</html>