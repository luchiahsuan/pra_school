<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>萬年曆</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            text-align: center;
        }

        .cal {
            display: flex;
            flex-wrap: wrap;
            margin: auto;
            width: 80%;
        }
        
        .date {
            height: 100px;
            border: 1px solid lightblue;
            width: calc(100% / 7);
            margin-top: -1px;
            margin-left: -1px;
            padding-top: 40px;
        }
    </style>
</head>

<body>
    <?php
    $cal = [];

    $month = (isset($_GET['m'])) ? $_GET['m'] : date("n");
    $year = (isset($_GET['y'])) ? $_GET['y'] : date("Y");

    $nextMonth = $month + 1;
    $prevMonth = $month - 1;


    $firstDay = $year . "-" . $month . "-1";
    $firstDayWeek = date("N", strtotime($firstDay));
    $monthDays = date("t", strtotime($firstDay));
    $lastDay = $year . '-' . $month . '-' . $monthDays;
    $spaceDays = $firstDayWeek - 1;
    $weeks = ceil(($monthDays + $spaceDays) / 7);

    for ($i = 0; $i < $spaceDays; $i++) {
        $cal[] = '';
    }

    for ($i = 0; $i < $monthDays; $i++) {
        $cal[] = date("Y-m-d", strtotime("+$i days", strtotime($firstDay)));
    }

    /* echo "<pre>";
print_r($cal);
echo "</pre>"; */

    echo "第一天" . $firstDay . "星期" . $firstDayWeek;
    echo "<br>";
    echo "該月共" . $monthDays . "天,最後一天是" . $lastDay;
    echo "<br>";
    echo "月曆天數共" . ($monthDays + $spaceDays) . "天，" . $weeks . "周";

    ?>

    <div style="display:flex;width:80%;justify-content:space-between;align-items:center">
        <a href="?y=2022&m=<?= $prevMonth; ?>">上一個月</a>
        <h1><?= $year; ?> 年 <?= $month; ?> 月份</h1>
        <a href="?y=2022&m=<?= $nextMonth; ?>">下一個月</a>
    </div>
    <div class="cal">

        <?php
        foreach ($cal as $i => $day) {
            echo "<div class='date'>$day</div>";
        }

        ?>
    </div>

</body>

</html>