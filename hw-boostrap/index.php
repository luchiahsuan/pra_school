<!DOCTYPE html>
<html lang="en">

<head>
  <title>Harry Potter</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="./css/style.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>

</style>

<body style="height:1500px">
  <!-- 導覽列 -->
  <?php
  include "./nav.html"
  ?>


  <!-- 電影海報 -->
  <hr>
  <h1 class="tittle" id="movie-poster"><br>- 電影海報 -<br></h1>
  <?php
  include "./movie_post.html"
  ?>
  <!-- 人物角色介紹 -->
  <hr id="character">
  <h1 class="tittle"><br>- 人物角色介紹 -<br></h1>
  <?php
  include "./all_characters.html"
  ?>
  <hr id="spells">
  <h1 class="tittle"><br>- 一起學咒語嗎？ -<br></h1>
  <?php
  include "./spells.html"
  ?>
  <hr id="magic_biology">
  <h1 class="tittle" ><br>- 生物與群族介紹 -<br></h1>
  <?php
  include "./magic_biology.html"
  ?>

  <hr  id="youtube">
  <h1 class="tittle"><br>- 幕後花絮影片 -<br></h1>
  <?php
  include "./youtube.php"
  ?>
<hr >
  <a id="back" href="#movie-poster">回到最上面</a>
</body>

</html>