const second = 1000,
      minute = second * 60,
      hour = minute * 60,
      day = hour * 24;

let countDown = new Date('Sep 25, 2022 22:30:00').getTime(),
    x = setInterval(function() {

      let now = new Date().getTime(),
          distance = countDown - now;

        document.getElementById('days').innerText = Math.floor(distance / (day)),
        document.getElementById('hours').innerText = Math.floor((distance % (day)) / (hour)),
        document.getElementById('minutes').innerText = Math.floor((distance % (hour)) / (minute)),
        document.getElementById('seconds').innerText = Math.floor((distance % (minute)) / second);

        // If the count down is finished, write some text
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("countdowntime").innerHTML = "<h1 class=\"p-b-48\">Bientôt accessible.</h1>";
  }
    }, second)