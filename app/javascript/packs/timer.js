// var Timer = require('easytimer.js').Timer;
// var timerInstance = new easytimer.Timer();
// var timer = new Timer();


import Timer from 'easytimer.js';

var timer = new Timer();

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
    $('#chronoExample .values').html(timer.getTimeValues().toString(['minutes', 'seconds', 'secondTenths']));
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
