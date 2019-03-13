//webkitURL is deprecated but nevertheless
URL = window.URL || window.webkitURL;

var gumStream;            //stream from getUserMedia()
var rec;              //Recorder.js object
var input;              //MediaStreamAudioSourceNode we'll be recording

// shim for AudioContext when it's not avb.
var AudioContext = window.AudioContext || window.webkitAudioContext;
var audioContext //audio context to help us record

var recordButton = document.getElementById("recordButton");
var stopButton = document.getElementById("stopButton");
// var pauseButton = document.getElementById("pauseButton");

//add events to those 2 buttons
recordButton.addEventListener("click", startRecording);
stopButton.addEventListener("click", stopRecording);
// pauseButton.addEventListener("click", pauseRecording);

function startRecording(e) {
  // console.log(e);
  e.currentTarget.style = "display:none";
  stopButton.style = "display:block";
  // console.log("recordButton clicked");
  // e.target.classList.add('clicked');
  // console.log("stopButton clicked");
  // e.target.classList.add('clicked');
  // console.log("pauseButton clicked");

/*
  Simple constraints object, for more advanced audio features see
  https://addpipe.com/blog/audio-constraints-getusermedia/
*/

  var constraints = { audio: true, video:false }

/*
    Disable the record button until we get a success or fail from getUserMedia()
*/

// recordButton.disabled = true;
// stopButton.disabled = false;
// pauseButton.disabled = false

/*
    We're using the standard promise based getUserMedia()
    https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices/getUserMedia
*/

navigator.mediaDevices.getUserMedia(constraints).then(function(stream) {
  console.log("getUserMedia() success, stream created, initializing Recorder.js ...");


  /*
    Simple constraints object, for more advanced audio features see
    https://addpipe.com/blog/audio-constraints-getusermedia/
  */

  //update the format
  // document.getElementById("formats").innerHTML="Format: 1 channel pcm @ "+audioContext.sampleRate/1000+"kHz"


  /*
      Disable the record button until we get a success or fail from getUserMedia()
  */

  recordButton.disabled = true;
  stopButton.disabled = false;
  pauseButton.disabled = false

  /*
      We're using the standard promise based getUserMedia()
      https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices/getUserMedia
  */

  navigator.mediaDevices.getUserMedia(constraints).then(function(stream) {
    console.log("getUserMedia() success, stream created, initializing Recorder.js ...");

    /*
      create an audio context after getUserMedia is called
      sampleRate might change after getUserMedia is called, like it does on macOS when recording through AirPods
      the sampleRate defaults to the one set in your OS for your playback device
    */
    audioContext = new AudioContext();

    //update the format
    document.getElementById("formats").innerHTML="Format: 1 channel pcm @ "+audioContext.sampleRate/1000+"kHz"

  console.log("Recording started");

}).catch(function(err) {
    //enable the record button if getUserMedia() fails
    recordButton.disabled = false;
    stopButton.disabled = true;
    // pauseButton.disabled = true
});
}

    /* use the stream */
    input = audioContext.createMediaStreamSource(stream);

    /*
      Create the Recorder object and configure to record mono sound (1 channel)
      Recording 2 channels  will double the file size
    */
    rec = new Recorder(input,{numChannels:1})

function stopRecording() {
  console.log("stopButton clicked");

  //disable the stop button, enable the record too allow for new recordings
  stopButton.style = 'display:none';
  document.querySelector('#controls').style = 'display:none';
  // stopButton.classList.remove("clicked")
  recordButton.style = 'display:block'
  document.querySelector('#restart-recording').style = 'display:block'
  // recordButton.disabled = false;
  // pauseButton.disabled = true;

  //reset button just in case the recording is stopped while paused
  // pauseButton.innerHTML="Pause";

  //tell the recorder to stop the recording
  rec.stop();

  //stop microphone access
  gumStream.getAudioTracks()[0].stop();

  //create the wav blob and pass it on to createDownloadLink
  rec.exportWAV(createDownloadLink);
}

function createDownloadLink(blob) {
  // console.log(blob)
  const url = window.URL.createObjectURL(blob);

  // add the audio playback element
  const list = document.getElementById('recordingsList');
  const li = document.createElement('li');
  const audioElement = document.createElement('audio');
  audioElement.src = url;
  audioElement.controls = true;

  const button = document.createElement('button');
  button.innerText = 'Submit';
  button.classList.add('btn')
  button.classList.add('btn-primary')
  li.appendChild(audioElement);
  li.appendChild(button);
  list.appendChild(li);

  button.addEventListener('click', () => {

    const form = document.querySelector(".edit_time_trial")
    // console.log(form);
    const formData = new FormData(form);
    // console.log(formData.get('authenticity_token'));
    formData.set('time_trial[audio]', blob, 'helloworld.wav');
    // console.log(formData.get('time_trial[audio]'));

    var request = new XMLHttpRequest();
    request.open("POST", form.action);
    request.send(formData);

    request.onload = (res) => {
      console.log(res);
      window.location = res.currentTarget.responseURL;
    };
  });

}

