class QuestionsController < ApplicationController
	before_filter :signed_in_user
	def create
		@question = current_user.questions.build(params[:question])
		if @question.save
			redirect_to(session[:return_to])
		end
	end
end
