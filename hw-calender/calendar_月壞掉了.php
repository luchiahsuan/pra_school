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

        /* body {
            background-color: black;

        } */
        /* .shaow-u {
            width: 950px;
            height: 50px;
            box-shadow: 0 25px 8px -12px rgba(0, 0, 0, 0.4);
            margin: 0 auto;
            float: none;
        } */

        /* .shaow-d {
            width: 1000px;
            height: 50px;
            box-shadow: 20px 0 8px -10px rgba(0,0,0,0.6);
            margin: 0 auto;
            float: none;

        } */

        .month {
            display: flex;
            flex-direction: row;
            width: 850px;
            height: 500px;
            margin: 0 auto;

            /* margin-top: 50px; */

        }

        .month-l {
            box-shadow: 0 0 3px -6px;
            flex-basis: 350px;
            background-color: lightblue;
            border: 1px solid black;
            /* z-index: -10; */
            text-align: center;
        }

        .l-year {
            margin-top: 50px;
            font-size: 7vh;
        }

        .l-month {
            font-size: 25vh;
        }


        .month-r {
            border: 1px solid black;
            flex-basis: 500px;
            margin-left: -1px;
            background-color: lightgray;
            /* z-index: -10; */
        }

        
        .month-h{
            margin-top: -90px;
            /* float: inline-start; */
        }
        .prenext-y {
            font-size: 70px;
            margin-top: -20px;
            opacity: 0.2;
        }
        .prenext-m {
            font-size: 70px;
            opacity: 0.2;
            margin-left: 365px;
            margin-top: -30px;
        }

        .prenext-ar {
            display: flex;
            font-size: 2.5vh;
            height: 30px;
            line-height: 30px;
            margin-left: 370px;
            /* text-align: end; */
        }

        .prenext-ar2 {
            background-color: lightcoral;
            margin-left: 10px;
            padding: 0 8px 0 8px;

        }

        .prenext-ar1 {
            background-color: lightcoral;
            padding: 0 8px 0 8px;

        }

        .prenext-ar1>a,
        .prenext-ar2>a {
            color: wheat;

            text-decoration: none;
            font-size: larger;
        }

        .week,
        .day {
            height: 50px;
            line-height: 50px;
        }

        .week {
            display: flex;
            flex-wrap: wrap;
            width: 80%;
            margin: 0 auto;
            margin-top: 15px;
            margin-bottom: 1px;
            background-color: lightgoldenrodyellow;
        }

        .date {
            /* border: 1px solid lightsalmon; */
            width: calc(100% / 7);
            margin-left: -1px;
            margin-bottom: -1px;
            text-align: center;

        }

        .days {
            background-color: lightgoldenrodyellow;
            display: flex;
            flex-wrap: wrap;
            width: 80%;
            margin: 0 auto;

        }

        .day:hover {
            background-color: lightcoral;
        }

        .day {
            /* border: 1px solid lightgray; */
            width: calc(100% / 7);
            margin-left: -1px;
            margin-bottom: -1px;
            text-align: center;
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

        // echo "第一天" . $firstDay . "星期" . $firstDayWeek;
        // echo "<br>";
        // echo "該月共" . $monthDays . "天,最後一天是" . $lastDay;
        // echo "<br>";
        // echo "月曆天數共" . $monthDays . "天，" . $weeks . "周";

        ?>

        <div class="shaow-u"></div>
        <div class="shaow-d"></div>


        <div class="month">
            <div class="month-l">
                <div class="l-year"><?= $year; ?></div>
                <div class="l-month"><?= $month; ?></div>
                <div class="l-day"><?= date("d") ?></div>

            </div>
            <div class="month-r">
            <div class="prenext-y">
                    <h1><?= $year; ?></h1>
                </div>
                <div class="month-h">
                    <div class="prenext-ar">
                        <div class="prenext-ar1">
                            <a href="?y=<?= $preyear ?>&m=<?= $prevMonth; ?>">
                                < </a>
                        </div>
                        <div class="prenext-ar2">
                            <a href="?y=<?= $nextyear ?>&m=<?= $nextMonth; ?>"> > </a>
                        </div>
                    </div>

                    <div class="week">
                        <div class="date">Mon.</div>
                        <div class="date">Tue.</div>
                        <div class="date">Wed.</div>
                        <div class="date">Thur.</div>
                        <div class="date">Fri.</div>
                        <div class="date">Sat.</div>
                        <div class="date">Sun.</div>
                    </div>
                    <div class="days">
                        <?php
                        // 用$i的內容當$cal的陣列數值顯示$day
                        foreach ($cal as $i => $day) {
                            echo "<div class='day'>";
                            echo "$day";
                            echo "</div>";
                        }

                        ?>
                    </div>
                </div>

                <div class="prenext-m">
                    <h1><?= $month; ?> </h1>
                </div>
            </div>
        </div>
</table>
</body>

</html>