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
		
	});
	

	$('#register-btn').on('click', function() {
		switch_form.call(this);
		var reg_form = $('#register_form').stop();

		//Fadeout login form then fadein register form
		$('#login_form').stop().fadeOut('fast', function() {
			reg_form.fadeIn(1000);
		});
	});

	// General function for toggling button state
	// -------------------------------------------
	var switch_form = function() {
		$this = $(this);
		$this.siblings().removeClass('selected');
		$this.addClass('selected');
	}

	/* End: Register and Login Toggle */
});