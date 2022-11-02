
changeTime();

function changeTime() {
  //获取时间
  let timer = new Date();
  //处理小时
  if (timer.getHours() > 12) {
    document.getElementById("hour").style.transform =
      "rotate(" +
      (360 * ((timer.getHours() - 12) / 12) +
        (timer.getMinutes() / 60) * 30) +
      "deg)";
  } else {
    document.getElementById("hour").style.transform =
      "rotate(" +
      (360 * ((timer.getHours() - 12) / 12) +
        (timer.getMinutes() / 60) * 30) +
      "deg)";
  }
  //处理分钟
  document.getElementById("minute").style.transform =
    "rotate(" +
    (360 * (timer.getMinutes() / 60) + (timer.getSeconds() / 60) * 6) +
    "deg)";
  //处理秒
  document.getElementById("second").style.transform =
    "rotate(" + 360 * (timer.getSeconds() / 60) + "deg)";
}

setInterval(changeTime, 1000);
