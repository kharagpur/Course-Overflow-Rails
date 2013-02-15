/**
 * ----------------------------------
 *  Home Screen Form Switching jQuery
 * ----------------------------------
 */
$(function() {

	/* Begin: Browse Button Show and Hide Toggle */
	$('#browse-btn').on('click', function() {
		$('#browse-courses').slideToggle(500, 'swing');
	});
	/* End */

	/* Begin: Register and Login Screen Toggle */

	$('#login-btn').on('click', function() {
		switch_form.call(this);
		var login_form = $('#login_form').stop();

		//Fadeout register form then fadein login form
		$('#register_form').stop().fadeOut('fast', function() {
			login_form.fadeIn(1000);
		});

		return false;
		
	});
	

	$('#register-btn').on('click', function() {
		switch_form.call(this);
		var reg_form = $('#register_form').stop();

		//Fadeout login form then fadein register form
		$('#login_form').stop().fadeOut('fast', function() {
			reg_form.fadeIn(1000);
		});

		return false;
	});

	// General function for toggling button state
	// -------------------------------------------
	var switch_form = function() {
		$this = $(this);
		$this.siblings().removeClass('selected');
		$this.addClass('selected');
	}

	/* End: Register and Login Toggle */


	// Loading Department's Corresponding Courses
	// --------------------------------------------

	$('.dept_link').on('click', function() {
		$(".courses-list").fadeOut('slow').remove();
		$.getJSON(this.href, function(data) {
			var num_per_section = 18;
			var sections = Math.ceil(data.length/num_per_section);
			var html = '';
			var i,j;
			var current;
			//Loop and build courses list
			//current = data[0];
			//console.log(current);
			//console.log(current['id']);
			for(i=0; i<sections; i++) {
				html += '<ul class="courses-list">';
				for(j=0; j<num_per_section; j++) {
					current = data[(j + i*num_per_section)];
					if(current == null) break;
					html += '<li><a href="/courses/' + current['id'] + '">'+ current.title +'</a></li>';
				}
				html += '</ul>';
			}
			$html = $(html);
			$('#courses-list-header').after($html.hide());
			$html.fadeIn('slow');
		});

		return false;
	})
});