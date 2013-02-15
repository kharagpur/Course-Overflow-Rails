$(function() {
	var vote = function(the_vote, url) {
		$this = $(this);
		$.post(url, {vote_type: the_vote}, function(data) {
			var notif = $('#answer_notification').fadeOut('fast');
			if(data['error'] != null) {
				notif.removeClass('answer_success')
					.addClass('answer_error')					
					.fadeIn('fast')
					.html(data['error']);
			} else {
				notif.html(data['success'])
					.removeClass('answer_error')
					.addClass('answer_success')
					.fadeIn('fast');
				var rating = $this.parent().parent().find('.answers');
				var score = parseInt(rating.html());
				if(the_vote) score += 10;
				else score -= 10;
				rating.text(score);
			}
		}, "json");
	}
	$('.upvote').on('click', function() {
		vote.call(this, true, this.href);
		return false;
	})

	$('.downvote').on('click', function() {
		vote.call(this, false, this.href);
		return false;
	})
});