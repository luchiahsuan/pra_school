<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>萬年曆</title>
    <script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Dancing+Script">
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
            $year . '-01-01' => "元旦",
            $year . '-02-28' => "紀念日",
            $year . '-04-01' => "愚人節",
            $year . '-04-04' => "兒童節",
            $year . '-04-05' => "清明節",
            $year . '-06-03' => "端午節",
            $year . '-09-15' => "中秋節",
            $year . '-10-10' => "雙十節",
            $year . '-12-25' => "聖誕節",

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
            <?php

            if ($month >= 2 && $month <= 4) {
                echo "<div class='sp'>
                <div class='word'>- Spring is around the corner -</div>
                <div class='l-now'>" . $now . "</div>
                <div class='img'><img src='./image/sp.jpg' alt='sp'></div>
                </div>";
            } else if ($month >= 5 && $month <= 7) {
                echo "<div class='sum'>
                <div class='word'>- It's Summer time -</div>
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
                            <div class="date">Mon</div>
                            <div class="date">Tue</div>
                            <div class="date">Wed</div>
                            <div class="date">Thu</div>
                            <div class="date">Fri</div>
                            <div class="date">Sat</div>
                            <div class="date">Sun</div>
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
                            echo "JAN";
                        } elseif ($month == 2) {
                            echo "FEB";
                        } elseif ($month == 3) {
                            echo "MAR";
                        } elseif ($month == 4) {
                            echo "APR";
                        } elseif ($month == 5) {
                            echo "MAY";
                        } elseif ($month == 6) {
                            echo "JUN";
                        } elseif ($month == 7) {
                            echo "JUL";
                        } elseif ($month == 8) {
                            echo "AUG";
                        } elseif ($month == 9) {
                            echo "SEP";
                        } elseif ($month == 10) {
                            echo "OCT";
                        } elseif ($month == 11) {
                            echo "NOV";
                        } else {
                            echo "DEC";
                        }
                        ?> </h1>
                </div>
            </div>
        </div>

</table>
</body>

</html>