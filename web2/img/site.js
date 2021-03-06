$(function() {
	var nav = $('nav'),
		list = nav.find('li'),
		
		panels = $('.panels'),
		
		body = $('html, body');
	
	//  Set the first link as active
	list.first().addClass('active');
	
	//  Handle other link clicks
	list.children('a').click(function() {
		var offset = $($(this).attr('href')).position();
		
		//  Move the divs
		if(offset && offset.top) {
			//  Change the active pointer
			$(this).parent().addClass('active').siblings().removeClass('active');
			
			!body.is(':animated') && body.animate({scrollTop: offset.top - 60}, 500);
		}
		
		//  Suck it, return false looks pretty
		return false;
	});
	
	//  And handle link scrolls
	$(window).scroll(function() {
		var me = $(this),
			el = panels.children('div').eq(Math.round(me.scrollTop() / me.height()));
				
		list.find('a[href=#' + el.attr('id') + ']').parent().addClass('active').siblings().removeClass('active');
	});
	
	
	//  And finally, handle dem FX
	$('pre a').click(function() {
		var me = $(this),
			action = me.text().split(':')[0];
		
		me.toggleClass('toggled');
		
		$.fool(action);
		
		return false;
	});
});
