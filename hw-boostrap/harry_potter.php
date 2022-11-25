<!DOCTYPE html>
<html lang="en">

<head>
  <title>Bootstrap Example</title>
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
  <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
    <div class="container-fluid">
      <!-- <a class="navbar-brand" href="#">Navbar scroll</a> -->
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarScroll">
        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#"><img src="./image/logo.jpg" alt="" style="height: 25px;width: 73px;"></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#movie-poster">電影介紹</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#character">主要角色</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              關於魔法世界
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">魔法學校</a></li>
              <li><a class="dropdown-item" href="#">魔法物品</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">生態族群</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">製作團隊</a>
          </li>

        </ul>
      </div>
    </div>
  </nav>
  <!-- 跑馬燈 -->
  <?php
  require "./carousel.html"
  ?>
  <div class="container-fluid"><br>
    <p>Some example text. Some example text. Some example text. Some example text. Some example text.</p>
    <p>Some example text. Some example text. Some example text. Some example text. Some example text.</p>
    <p>Some example text. Some example text. Some example text. Some example text. Some example text.</p>
    <p>Some example text. Some example text. Some example text. Some example text. Some example text.</p>
  </div>
  <!-- 電影海報 -->
  <hr>
  <h1 class="tittle" id="movie-poster"><br>- 電影海報 -<br></h1>
  <?php
  require "./movie_post.html"
  ?>
  <!-- 人物角色介紹 -->
  <hr id="character">
  <h1 class="tittle"><br>- 人物角色介紹 -<br></h1>
  <?php
  require "./role.html"
  ?>

</body>

</html>