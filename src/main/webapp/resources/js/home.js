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

    });
    $('.addTodo').click(function(){
    	$('.todo.content').append('<div class=field><label>What to do?</label><input placeholder=ex start the tool(instructions) name=todoName type=text class=messageId id =><div class=ui negative message><i class=close icon></i><p>Type minimum 10 characters!!</p></div></div><br />')
    })
    $('#sendButton').click(function(){
    var serviceUrl = "/demo/home/saveEntity";
    var baseUrl = window.location.protocol + "//" + window.location.hostname + (window.location.port ? ':' + window.location.port : '');
    var url =   baseUrl + serviceUrl;
    var demo = {}
    demo["softwareName"] = $('#toolSoftware').val();
    demo["description"] = $('#description').val();
    demo["version"] = $('#version').val();
    demo["uses"] = $('#uses').val();
    var commands = [];
    $("input[name='todoName']").each(function() {
    	commands.push($(this).val());
    });
    demo["commands"] = commands;
    var toolSoftware = $('#toolSoftware').val();
    $.ajax({
    	  type: "POST",
    	  url: url,
    	  contentType: "application/json",
    	  data: JSON.stringify(demo),
    	  cache: false,
    	  
    	  success: function(data){
    	     console.log("success");
    	     $('body').html(data);
    	  }
    	});
    });
});