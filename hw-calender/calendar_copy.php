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
        }


        .month {
            display: flex;
            margin: 0 auto;
            flex-direction: row;
            width: 1500px;
            height: 900px;
            margin-top: 150px;
        }

        .word {
            margin-top: 100px;
            font-size: 40px;
            border-style: solid none solid none;
            padding: 10px 0 10px 0;

        }

        .sp,
        .sum,
        .aut,
        .win {
            border-radius: 100px 0 100px 0;
            flex-basis: 600px;
            box-shadow: -20px -20px 8px -2px rgba(0, 0, 0, 0.5);
            text-align: center;
            color: white;
            font-family: Arial, Helvetica, sans-serif;
        }



        .sp {
            background-color: #76c0ef;

        }

        .sum {
            background-color: #ffa500;
        }

        .aut {
            background-color: #d2691e;
        }

        .win {
            color: white;
            background-color: #4F9D9D;
        }

        .l-now {
            margin-top: 70px;
            font-size: 120px;
        }

        .img>img {
            border-radius: 20%;
            margin-top: 80px;
        }

        .month-r {
            border-radius: 0 130px 0 130px;
            flex-basis: 900px;
            margin-left: -1px;
            background-color: lightgray;
            box-shadow: -20px 20px 8px -2px rgba(0, 0, 0, 0.4);
            position: relative;
        }

        .prenext-m {
            display: inline-block;
            margin: 0 auto;
            margin-top: 55px;
        }

        .prenext-y {
            font-size: 90px;
            opacity: 0.3;
            position: absolute;
            margin-top: -25px;
        }

        .prenext-m1 {
            font-size: 100px;
            opacity: 0.3;
            margin-top: -30px;
            margin-left: 380px;
            text-align: right;
            font-family: Georgia, 'Times New Roman', Times, serif;
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
            margin-top: 400px;
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
            height: 80px;
            line-height: 80px;
            font-family: 'Courier New', Courier, monospace;

        }

        .holiday {
            height: 80px;
            line-height: 40px;
            width: calc(100% / 7);
        }

        /* 一週那條 */
        .week {
            display: flex;
            flex-wrap: wrap;
            margin: 0 auto;
            margin-top: 160px;
            background-color: lightgoldenrodyellow;
            border-radius: 0 50px 0 0;
            font-size: larger;

        }

        /* 星期幾單天 */
        .date {
            width: calc(100% / 7);
        }

        .holiday:hover {
            background-color: lightseagreen;
        }

        /* 1-31一個月 */
        .days {
            background-color: lightgoldenrodyellow;
            display: flex;
            flex-wrap: wrap;
            margin: 0 auto;
            margin-top: 10px;
            border-radius: 0 0 0 50px;

        }

        .day:hover {
            background-color: lightcoral;
        }


        /* 1-31每天 */
        .day {
            font-weight: bold;
            width: calc(100% / 7);
        }
    </style>
</head>
<table>



    <body>

        <?php
        date_default_timezone_set('Asia/Taipei');
        $now = date('H:i');
        $cal = [];
        $hy = date('y');
        // 如果有要求年月就顯示要求的,如無要求則顯示當下年月
        $month = (isset($_GET['m'])) ? $_GET['m'] : date("m");
        $year = (isset($_GET['y'])) ? $_GET['y'] : date("Y");
        $holiday = [
            '2023-05-09' => "B-day"
        ];


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
            $cal[] = date("Y-m-d", strtotime("+$i days", strtotime($firstDay)));
        }

        for ($i = 0; $i < $lastSpaceDays; $i++) {
            $cal[] = '';
        }
        ?>

        <div class="month">
            <!-- <div class="hyear"> -->
            <!-- <div class="month-l1"> -->
            <!-- What’s the time?

                <div class="l-now"><?= $now; ?></div>
                <div class="l-month"><?= $month; ?></div>
                <div class="l-day"><?= date("d") ?></div> -->
            <?php


            if ($month >= 2 && $month <= 4) {
                echo "<div class='sp'>
                <div class='word'>- Spring is around the corner -</div>
                <div class='l-now'>" . $now . "</div>
                <div class='img'><img src='./image/sp.jpg' alt='sp'></div>
                </div>";
            } else if ($month >= 5 && $month <= 7) {
                echo "<div class='sum'>
                <div class='word'>- It's SUMMER time -</div>
                <div class='l-now'>" . $now . "</div>
                <div class='img'><img src='./image/sum.jpg' alt='sum'></div>
                </div>";
            } else if ($month >= 8 && $month <= 10) {
                echo "<div class='aut'>
                <div class='word'>- Maple leaves turn red -</div>
                <div class='l-now'>" . $now . "</div>
                <div class='img'><img src='./image/aut.jpg' alt='aut'></div>
                </div>";
            } else if ($month >= 11 || $month = 1) {
                echo "<div class='win'>
                <div class='word'>- Time to sleep well -</div>
                <div class='l-now'>" . $now . "</div>
                <div class='img'><img src='./image/win.jpg' alt='win'></div>
                </div>";
            }
            ?>
            <!-- </div> -->


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
                            foreach ($cal as $i => $day) {
                                if ($day != "") {
                                    $show = explode("-", $day)[2];
                                } else {
                                    $show = "";
                                }

                                if (array_key_exists($day, $holiday)) {

                                    echo "<div class='holiday'>";
                                    echo $show;
                                    echo "<div>{$holiday[$day]}</div>";
                                    echo "</div>";
                                } else {

                                    echo "<div class='day'>$show</div>";
                                }
                            }
                            ?>
                        </div>
                    </div>
                    <div class="prenext-ar2">
                        <a href="?y=<?= $nextyear ?>&m=<?= $nextMonth; ?>"><i class="fa-solid fa-arrow-right"></i> </a>
                    </div>
                </div>

                <div class="prenext-m1">
                    <h1><?php
                        if ($month == 1) {
                            echo "JAN.";
                        } elseif ($month == 2) {
                            echo "FEB.";
                        } elseif ($month == 3) {
                            echo "MAR.";
                        } elseif ($month == 4) {
                            echo "APR.";
                        } elseif ($month == 5) {
                            echo "MAY.";
                        } elseif ($month == 6) {
                            echo "JUN.";
                        } elseif ($month == 7) {
                            echo "JUL.";
                        } elseif ($month == 8) {
                            echo "AUG.";
                        } elseif ($month == 9) {
                            echo "SEP.";
                        } elseif ($month == 10) {
                            echo "OCT.";
                        } elseif ($month == 11) {
                            echo "NOV.";
                        } else {
                            echo "DEC.";
                        }
                        ?> </h1>
                </div>
            </div>
        </div>

</table>
</body>

</html>