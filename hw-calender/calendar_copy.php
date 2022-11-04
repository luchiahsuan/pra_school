<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>萬年曆</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        table {
            border-collapse: collapse;
        }

        table td {
            border: 1px solid #ccc;
            padding: 3px 9px;
            width: 60px;
            margin: auto;

        }

        .cal {
            display: flex;
            flex-wrap: wrap;
            width: 80%;
            margin: 0 auto;
        }

        .day {
            border: 1px solid lightsalmon;
            width: calc(100% / 7);
            margin-left: -1px;
            margin-bottom: -1px;
        }
    </style>
</head>
<table>



    <body>
        <?php
        // //先獲取日期
        // if(isset($_GET['yeardown'])){  //年減少，年份往前推
        //     $year=$_GET['year']-1;
        //     $month=$_GET['month'];
        //     $today=date("d");
        // }
        // else if(isset($_GET['yearup'])){  //年增加，年份往後推
        //     $year=$_GET['year']+1;
        //     $month=$_GET['month'];
        //     $today=date("d");
        // }
        // else if(isset($_GET['monthdown'])){  //月減少，月份往前推
        //     $year=$_GET['year'];
        //     $month=$_GET['month']-1;
        //     $today=date("d");
        //     if ($month==0){          //遇到零月，年份減1，月份變12
        //         $month=12;
        //         $year--;
        //     }

        // }
        // else if(isset($_GET['monthup'])){   //月增加，月份往後推
        //     $year=$_GET['year'];
        //     $month=$_GET['month']+1;
        //     $today=date("d");
        //     if ($month==13){    //月變爲13時，年加1，月變爲1
        //         $month=1;
        //         $year++;
        //     }
        // }
        // else{       //一開始沒有傳參時，獲取當前年月日
        //     $year=date("Y");
        //     $month=date("m");
        //     $today=date("d");
        // }


        $cal = [];
        // 如果有要求年月就顯示要求的,如無要求則顯示當下年月
        $month = (isset($_GET['m'])) ? $_GET['m'] : date("m");
        $year = (isset($_GET['y'])) ? $_GET['y'] : date("Y");


        $preyear = $year;
        $nextyear = $year;

        $prevMonth = $month - 1;
        $nextMonth = $month + 1;
        if ($month == 12) {
            $nextMonth = 1;
            $nextyear = $year + 1;
        }
        if ($month == 1) {
            $prevMonth = 12;
            $preyear = $year - 1;
        }




        // date(日期,想要的時間)
        $firstDay = $year . "-" . $month . "-1";
        // N數字代表星期幾 1-7=一到日
        // strtotime把()裡的字串變時間
        $firstDayWeek = date("N", strtotime($firstDay));
        // t代表月份應有的天數 28-31
        $monthDays = date("t", strtotime($firstDay));
        $lastDay = $year . '-' . $month . '-' . $monthDays;
        $spaceDays = $firstDayWeek - 1;
        // ceil為無條件捨去
        $weeks = ceil(($monthDays + $spaceDays) / 7);
        $lastSpaceDays = $weeks * 7 - $monthDays - $spaceDays;

        $a = array("星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日");

        for ($i = 0; $i < $spaceDays; $i++) {
            $cal[] = '';
        }

        for ($i = 0; $i < $monthDays; $i++) {
            // d代表月分中的第幾天 沒有前導0 1-31
            $cal[] = date("d", strtotime("+$i days", strtotime($firstDay)));
        }

        for ($i = 0; $i < $lastSpaceDays; $i++) {
            $cal[] = '';
        }

        /* echo "<pre>";
print_r($cal);
echo "</pre>"; */

        echo "第一天" . $firstDay . "星期" . $firstDayWeek;
        echo "<br>";
        echo "該月共" . $monthDays . "天,最後一天是" . $lastDay;
        echo "<br>";
        echo "月曆天數共" . $monthDays . "天，" . $weeks . "周";

        ?>


        <div style="display:flex;width:80%;justify-content:space-between;align-items:center">
            <a href="?y=<?= $preyear ?>&m=<?= $prevMonth; ?>">上一個月</a>
            <h1><?= $year; ?> 年 <?= $month; ?> 月份</h1>
            <a href="?y=<?= $nextyear ?>&m=<?= $nextMonth; ?>">下一個月</a>
        </div>
        <div class="cal">
            <?php
            // 用$i的內容當$cal的陣列數值顯示$day
            foreach ($cal as $i => $day) {

                echo "<div class='day'>";

                echo "$day";
                echo "</div>";
            }

            ?>
        </div>
</table>
</body>

</html>