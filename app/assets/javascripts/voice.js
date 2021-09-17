SpeechRecognition = webkitSpeechRecognition || SpeechRecognition;
const recognition = new SpeechRecognition();

recognition.onresult = (event) => {
 // alert(event.results[0][0].transcript);
 $('#post_content').val(event.results[0][0].transcript)
 console.log(event);
}

recognition.start();
