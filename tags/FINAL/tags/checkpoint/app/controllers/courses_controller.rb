class CoursesController < ApplicationController
  
  def show
      @course = Course.find(params[:id])
      @title = @course.title
      @stylesheet = "content.css"
      @current_user = user_from_remember_token
      @concept = Content.where(:course_id => @course.id)

  end
  
  def create
    @user = User.new(params[:user])      
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Course Overflow!"
      redirect_to @user       
    else             
      render 'pages/home'
      
    end
  end

  def questions
    @course = Course.find(params[:id])
    @stylesheet = "questions.css"
    @lists = Question.where(course_id: @course.id)
  end
end
