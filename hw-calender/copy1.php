<?php
/**
 * 1.获取日期年和月，默认当前年份和月份
 * 2.计算当前月份有多少天和本月1号是星期几
 * 3.输出日期的头部信息
 * 4.循环遍历输出输出天数
 * 5.完成上一月和下一月链接
 * *
*/
//1.
$year = empty($_REQUEST['y']) ? date("Y") : intval($_REQUEST['y']);
$month = empty($_REQUEST['m']) ? date("m") : intval($_REQUEST['m']);
//2.
$day = date("t",mktime(0,0,0,$month,'1',$year));//获取对应该月的天数
$moneday = date("w",mktime(0,0,0,$month,'1',$year)); //获取该月的星期几

//3.
$weekarr = array("星期日","星期一","星期二","星期三","星期四","星期五","星期六"); 
echo "<center>";
echo "<h1>{$year}年{$month}月</h1>";
echo "<table width='600' border='1' >";
echo "<tr>";
for($i=0;$i<=6;$i++){
    echo "<th>{$weekarr[$i]}</th>";
}
echo "</tr>";
echo "<tr>";
//4.
$ed = 1;
while($ed <= $day){
    //每七天换行
    echo "<tr>";
    for($i=0;$i<=6;$i++){
        //不能超过当月的天数且还没有该输出日期的时候
        if($ed <= $day && ($moneday <= $i || $ed != 1) ){
            echo "<td>{$ed}</td>";
            $ed++;
        }else{
            echo "<td></td>";
        }
    }
    
}
echo "</tr>";
echo "</table>";
//5
$prey = $nexty = $year;//年
$prem = $nextm = $month;//月
if($prem <= 1){
    $prem = 12;
    $prey--;
}else{
    $prem--;//上一月
}
if($nextm >= 12){
    $nextm = 1;
    $nexty++;
}else{
    $nextm++;//下一月
}
echo "<h3><a href='wanianli.php?y={$prey}&m={$prem}'>上一月</a>&nbsp;&nbsp;";
echo "<a href='wanianli.php?y={$nexty}&m={$nextm}'>下一月</a></h3>";
echo "</center>";
