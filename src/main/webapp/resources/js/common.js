 $(document).ready(function() {
	 $('.ui.demo.menu')
	  .sidebar({
	    context: $('.context.example .bottom.segment')
	  })
	  .sidebar('attach events', '.context.example .menu .item');
	 $('.message .close').on('click', function() { $(this).parent().hide(); });
	 $('.reset.button').click(function(){
		 $('input[type=text]').val('');
		 $('.negative.message').css("display", "none");
	 });
 });