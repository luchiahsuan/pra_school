<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>萬年曆</title>
    <script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        * {
            box-sizing: border-box;
            margin: 0 auto;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }


        .month {
            display: flex;
            margin: 0 auto;
            flex-direction: row;
            width: 1000px;
            height: 600px;
            margin-top: 50px;
        }

        .month-l1 {
            border-radius: 70px 0 70px 0;
            flex-basis: 400px;
            background-color: lightblue;
            box-shadow: -20px -20px 8px -2px rgba(0, 0, 0, 0.5);
            text-align: center;
        }

        /* .month-l2 {
            height: 600px;
            width: 500px;
            background-color: lightblue;
        } */

        .l-year {
            margin-top: 50px;
            font-size: 7vh;
        }

        .l-month {
            font-size: 25vh;
        }

        .month-r {
            border-radius: 0 100px 0 100px;
            flex-basis: 600px;
            margin-left: -1px;
            background-color: lightgray;
            box-shadow: -20px 20px 8px -2px rgba(0, 0, 0, 0.4);
            position: relative;
        }

        .prenext-m {
            display: inline-block;
            width: 80%;
            margin: 0 auto;
            margin-top: 55px;
        }

        .prenext-y {
            font-size: 70px;
            opacity: 0.3;
            position: absolute;
            margin-top: -25px;
        }

        .prenext-m1 {
            font-size: 70px;
            opacity: 0.3;
            margin-top: -5px;
            margin-left: 380px;
            text-align: right;
        }

        .prenext-h {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            width: 80%;
            text-align: center;

        }

        .prenext-ar1,
        .prenext-ar2 {
            font-size: 30px;
            margin-top: 250px;
            height: 50px;
            line-height: 50px;
        }

        .prenext-ar1>a,
        .prenext-ar2>a {
            color: black;
            text-decoration: none;
        }

        /* 一週+31天 */
        .week,
        .day {
            height: 50px;
            line-height: 50px;
            font-family: 'Courier New', Courier, monospace;

        }

        /* 一週那條 */
        .week {
            display: flex;
            flex-wrap: wrap;
            margin: 0 auto;
            margin-top: 120px;
            background-color: lightgoldenrodyellow;
        }

        /* 星期幾單天 */
        .date {
            width: calc(100% / 7);
            margin-left: -1px;
            margin-bottom: -1px;
        }

        /* 1-31一個月 */
        .days {
            background-color: lightgoldenrodyellow;
            display: flex;
            flex-wrap: wrap;
            margin: 0 auto;
        }

        .day:hover {
            background-color: lightcoral;
        }

        /* 1-31每天 */
        .day {
            width: calc(100% / 7);
            margin-left: -1px;
            margin-bottom: -1px;
        }
    </style>
</head>
<table>



    <body>
        <?php
        date_default_timezone_set('Asia/Taipei');
        $now=date('H:i');
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

        ?>

        <div class="shaow-u"></div>
        <div class="month">
            <div class="month-l1">
            What’s the time?

                <div class="l-year"><?= $now; ?></div>
                <div class="l-month"><?= $month; ?></div>
                <div class="l-day"><?= date("d") ?></div>
            </div>

            <div class="month-r">
                <div class="prenext-y">
                    <h1><?= $year; ?></h1>
                </div>
                <div class="prenext-h">
                    <div class="prenext-ar1">
                        <a href="?y=<?= $preyear ?>&m=<?= $prevMonth; ?>">
                            <i class="fa-solid fa-arrow-left"></i> </a>
                    </div>
                    <div class="prenext-wd">
                        <div class="week">
                            <div class="date">Mon.</div>
                            <div class="date">Tue.</div>
                            <div class="date">Wed.</div>
                            <div class="date">Thu.</div>
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
                    <div class="prenext-ar2">
                        <a href="?y=<?= $nextyear ?>&m=<?= $nextMonth; ?>"><i class="fa-solid fa-arrow-right"></i> </a>
                    </div>
                </div>

                <div class="prenext-m1">
                    <h1><?= $month; ?> </h1>
                </div>
            </div>
        </div>

</table>
</body>

</html>