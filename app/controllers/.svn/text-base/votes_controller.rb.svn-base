class VotesController < ApplicationController

	# Answers Voting Handler
	# -----------------------
	def vote
		if signed_in?
			the_vote = Vote.where(user_id: current_user.id, answer_id: params[:id])
			if the_vote.length == 0
				current_user.votes.create(answer_id: params[:id], vote_type: params[:vote_type])
				response = { success: 'Successfully voted!'}
			else
				response = { error: 'You can only vote once per answer!' }
			end
		else
			response = { error: "Please <a href=\"#{root_path}\" title=\"Sign in\">sign in</a> to vote!"}
		end
		render :json => response.to_json
	end

	# Analogy, Definitions, Videos
	# ------------------------------
	def addvote
		if signed_in?
			if(params[:content] == 'analogy')
				the_vote = AnalogyVote.where(user_id: current_user.id, analogy_id: params[:id])
				if the_vote.length == 0
					current_user.analogy_votes.create(analogy_id: params[:id], vote_type: params[:vote_type])
					response = { success: 'Successfully voted!'}
				else
					response = { error: 'You can only vote once per answer!' }
				end
			end
			if(params[:content] == 'video')
				the_vote = VideoVote.where(user_id: current_user.id, video_id: params[:id])
				if the_vote.length == 0
					current_user.video_votes.create(video_id: params[:id], vote_type: params[:vote_type])
					response = { success: 'Successfully voted!'}
				else
					response = { error: 'You can only vote once per answer!' }
				end
			end
			if(params[:content] == 'definition')
				the_vote = DefinitionVote.where(user_id: current_user.id, definition_id: params[:id])
				if the_vote.length == 0
					current_user.definition_votes.create(definition_id: params[:id], vote_type: params[:vote_type])
					response = { success: 'Successfully voted!'}
				else
					response = { error: 'You can only vote once per answer!' }
				end
			end
		else
			response = { error: "Please <a href=\"#{root_path}\" title=\"Sign in\">sign in</a> to vote!"}
		end
		render :json => response.to_json
	end
end