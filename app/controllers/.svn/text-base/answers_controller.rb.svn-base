class AnswersController < ApplicationController
	before_filter :signed_in_user
	def create
		@ans = current_user.answers.build(params[:answer])
		if @ans.save
			redirect_to(session[:return_to])
		end
	end
end
