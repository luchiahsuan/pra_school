<div class="main">

<h1 class='text-center'>最新消息</h1>

</div>


<?php
$all_news="SELECT * FROM `news` ";
$rows=$pdo->query($all_news)->fetchALL();

foreach($rows as $row){
    echo "<li class='list-group-item list-group-item-action d-flex'>";
    echo "<a href='index.php?do=news_detail&id={$row['id']}'>";
    echo $row['subject'];
    echo "</a>";
    echo "</li>";

}

?>

</ul>