class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
      @user = User.find(params[:id])
      @title = @user.firstname
      @stylesheet = "profile.css"
      @current_user = user_from_remember_token

      @def = Definition.where(:user_id => @user.id)
      @analog = Analogy.where(:user_id => @user.id)
      @vid = Video.where(:user_id => @user.id)
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
end
