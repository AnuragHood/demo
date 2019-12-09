 $(document).ready(function() {
	 $('.ui.demo.menu')
	  .sidebar({
	    context: $('.context.example .bottom.segment')
	  })
	  .sidebar('attach events', '.context.example .menu .item')
	;
 });