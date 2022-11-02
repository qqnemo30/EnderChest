<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <title>HomePage | Mia_qqnemo30</title>
    <link rel="shortcut icon" href="../SRC/favicon.ico" type="image/x-icon" />
    <link href="../CSS/HomePage.css" type="text/css" rel="stylesheet" />

  </head>

  <body>
    <span class="js-cursor-container"></span>
    <script src="../JAVA/trailing.js" type="text/javascript"></script>

    <div class="homepage">

      <div class="header">
        <h1>我是 Mia_qqnemo30，</h1>
        <div class="main">
          <span class="container"></span><span class="delete"></span>
        </div>
        <script src="../JAVA/print.js" type="text/javascript"></script>
        <h1>欢迎来到我的主页!</h1>
        <a href="https://www.sanparks.org/parks/addo/">去看看大象们的家：https://www.sanparks.org/parks/addo/</a>
      </div>

      <div class="calendar">
        <div class="title">
          <h1 class="month" id="calendar-title">Month</h1>
          <h2 class="year" id="calendar-year">Year</h2>
          <a href="" id="pre"><</a>
          <a href="" id="next">></a>
        </div>
        <div class="body">
          <div class="lightgrey body-list">
            <!--使用无序列表标签显示星期-->
            <ul>
              <li>SUN</li>
              <li>MON</li>
              <li>TUE</li>
              <li>WED</li>
              <li>THU</li>
              <li>FRI</li>
              <li>SAT</li>
            </ul>
          </div>
          <!--使用无序列表标签显示日期，日期使用JavaScript动态获取，然后使用innerHTML设置<ul>标签之间的HTML-->
          <div class="darkgrey body-list">
            <ul id="days"></ul>
          </div>
          <script src="../JAVA/calendar.js" type="text/javascript"></script>

            
          <div class="clock" id="clock">
            <!-- 外边框 -->
            <div id="clock-border"></div>
            <!-- 小刻度 -->
            <div class="calibration-small" style="transform:rotate(6deg)"></div>
            <div class="calibration-small" style="transform:rotate(12deg)"></div>
            <div class="calibration-small" style="transform:rotate(18deg)"></div>
            <div class="calibration-small" style="transform:rotate(24deg)"></div>

            <div class="calibration-small" style="transform:rotate(36deg)"></div>
            <div class="calibration-small" style="transform:rotate(42deg)"></div>
            <div class="calibration-small" style="transform:rotate(48deg)"></div>
            <div class="calibration-small" style="transform:rotate(54deg)"></div>

            <div class="calibration-small" style="transform:rotate(66deg)"></div>
            <div class="calibration-small" style="transform:rotate(72deg)"></div>
            <div class="calibration-small" style="transform:rotate(78deg)"></div>
            <div class="calibration-small" style="transform:rotate(84deg)"></div>

            <div class="calibration-small" style="transform:rotate(96deg)"></div>
            <div class="calibration-small" style="transform:rotate(102deg)"></div>
            <div class="calibration-small" style="transform:rotate(108deg)"></div>
            <div class="calibration-small" style="transform:rotate(114deg)"></div>

            <div class="calibration-small" style="transform:rotate(126deg)"></div>
            <div class="calibration-small" style="transform:rotate(132deg)"></div>
            <div class="calibration-small" style="transform:rotate(138deg)"></div>
            <div class="calibration-small" style="transform:rotate(144deg)"></div>

            <div class="calibration-small" style="transform:rotate(156deg)"></div>
            <div class="calibration-small" style="transform:rotate(162deg)"></div>
            <div class="calibration-small" style="transform:rotate(168deg)"></div>
            <div class="calibration-small" style="transform:rotate(174deg)"></div>

            <!-- 挡住小刻度的中间 -->
            <div id="calibration-small-cover"></div>

            <!-- 大刻度 -->
            <div class="calibration-big" style="transform:rotate(0deg)"></div>
            <div class="calibration-big" style="transform:rotate(30deg)"></div>
            <div class="calibration-big" style="transform:rotate(60deg)"></div>
            <div class="calibration-big" style="transform:rotate(90deg)"></div>
            <div class="calibration-big" style="transform:rotate(120deg)"></div>
            <div class="calibration-big" style="transform:rotate(150deg)"></div>

            <!-- 挡住大刻度的中间 -->
            <div id="calibration-big-cover"></div>

            <!-- 时针 -->
            <div id="hour" class="hour-hand" style="">
              <div class="clock-show" style="background-color: rgb(254, 250, 247);"></div>
            </div>

            <!-- 分针 -->
            <div id="minute" class="min-hand" style="">
              <div class="clock-show" style="background-color: rgb(147, 120, 99);"></div>
            </div>

            <!-- 秒针 -->
            <div id="second" class="sec-hand">
              <div class="clock-show" style="background-color: rgb(69, 55, 44);"></div>
            </div>
          </div>
          <script src="../JAVA/clock.js" type="text/javascript"></script>

          <div id="d1">
		        <img src="../SRC/portrait.jpg" alt="">
	        </div>

          <div class="introduction">
            <h1>Mia_qqnemo30</h1>
            <p>꒰ᐢ⸝⸝•༝•⸝⸝ᐢ꒱</p>
          </div>


          <div class="navbar">
            <a href="#">首页</a>
            <a href="http://127.0.0.1//Homepage/Introduction/HTML/Mia_qqnemo30_Introduction.php">简介</a>
            <a href="http://127.0.0.1//Homepage/Projects/HTML/Mia_qqnemo30_Projects.php">项目</a>
            <a href="http://127.0.0.1//Homepage/FindMe/HTML/Mia_qqnemo30_FindMe.php">找我</a>
          </div>
        </div>
      </div> 
    </div>
  </body>
</html>

