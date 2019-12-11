$(document).ready(function () {
    $('#addEntity').css("display", "none");
    $('#addSoftware,#addTools').click(function () {
        $('.negative.message').css("display", "none");
        $('#addEntity').css("display", "block");
    });
    $('#sendButton').attr('disabled', true);
    $('.messageId').keyup(function () {
        if ($(this).val().length < 10){
            $(this).next('div').css('display','block')
            $('#sendButton').attr('disabled', true);
        }
        else{
            $('#sendButton').attr('disabled', false);
            $(this).next('div').css('display','none')
        }

    })
});