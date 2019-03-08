// var Timer = require('easytimer.js').Timer;
// var timerInstance = new easytimer.Timer();
// var timer = new Timer();


import Timer from 'easytimer.js';

var timer = new Timer();

const timerForm = document.querySelector('#time-trial-seconds')

document.querySelector('.startButton').addEventListener('click', function () {
    // console.log('start!')
    timer.start({ precision: 'secondTenths', target: { seconds: 60 } });
});

$('#chronoExample .pauseButton').click(function () {
    timer.pause();
});
$('#chronoExample .stopButton').click(function () {
    timer.stop();
});
$('#chronoExample .resetButton').click(function () {
    timer.reset();
});
timer.addEventListener('secondTenthsUpdated', function (e) {
  // 1. get the seconds input (by id?)
  document.querySelector('.values')
  // 2. set the seconds input value to current seconds ellapsed
  $('#chronoExample .values').html(timer.getTimeValues().toString(['minutes', 'seconds', 'secondTenths']));
  timerForm.querySelector('#time_trial_seconds').value = timer.getTotalTimeValues().seconds
});
timer.addEventListener('started', function (e) {
    $('#chronoExample .values').html(timer.getTimeValues().toString());
});
timer.addEventListener('reset', function (e) {
    $('#chronoExample .values').html(timer.getTimeValues().toString());
});
timer.addEventListener('targetAchieved', function (e) {
    $('.progress_bar').html('COMPLETE!!');
});
