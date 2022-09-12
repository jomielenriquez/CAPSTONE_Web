$.extend($.gritter.options, {
    class_name: 'gritter-dark', // for light notifications (can be added directly to $.gritter.add too)
    position: 'bottom-left', // possibilities: bottom-left, bottom-right, top-left, top-right
    fade_in_speed: 100, // how fast notifications fade in (string or int)
    fade_out_speed: 100, // how fast the notices fade out
    time: 3000 // hang on the screen for...
});
function gritter(title, Message) {

    $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: title,
        // (string | mandatory) the text inside the notification
        text: Message
    });
}
function sticky_gritter(title, text, isError, isSticky) {
    var location = "";
    if (isError == false) location = '../images/confirm.png'
    else location = '../images/error.png'
    var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: title,
        // (string | mandatory) the text inside the notification
        text: text,
        // (string | optional) the image to display on the left
        image: location,
        // (bool | optional) if you want it to fade out on its own or just sit there || true or false
        sticky: isSticky,
        // (int | optional) the time you want it to be alive for before fading out
        time: '',
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
    });

}

//function gritter(){
//    $.gritter.add({
//        // (string | mandatory) the heading of the notification
//        title: 'Welcome to Dashio!',
//        // (string | mandatory) the text inside the notification
//        text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo.',
//        // (string | optional) the image to display on the left
//        image: 'img/ui-sam.jpg',
//        // (bool | optional) if you want it to fade out on its own or just sit there
//        sticky: false,
//        // (int | optional) the time you want it to be alive for before fading out
//        time: 8000,
//        // (string | optional) the class name you want to apply to that specific message
//        class_name: 'my-sticky-class'
//    }) }