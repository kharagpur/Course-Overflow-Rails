$(function() {
	var vote = function(the_vote, url) {
		$this = $(this);
		$.post(url, {vote_type: the_vote}, function(data) {
			if(data['error'] == null) {
				var span = $this.parent().find('span');
				if (span.text() == "") span.text('1');
				else {
					var num = parseInt(span.text());
					++num;
					span.text(num);
				}
			}
		}, "json");
	}
	$('.definition_upvote').on('click', function() {
		vote.call(this, true, this.href);
		return false;
	});

	$('.definition_downvote').on('click', function() {
		vote.call(this, false, this.href);
		return false;
	});

	$('.analogy_upvote').on('click', function() {
		vote.call(this, true, this.href);
		return false;
	});

	$('.analogy_downvote').on('click', function() {
		vote.call(this, false, this.href);
		return false;
	});

	$('.video_upvote').on('click', function() {
		vote.call(this, true, this.href);
		return false;
	});

	$('.video_downvote').on('click', function() {
		vote.call(this, false, this.href);
		return false;
	});

});