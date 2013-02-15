class AnalogiesController < ApplicationController
  def new
    @analogy = Analogy.new
    @topic = Topic.find(params[:tid])
  end

  def create
    @analogy = Analogy.new(params[:analogy])
    @analogy.user = user_from_remember_token
    if @analogy.save
      flash[:notice]= "You have successfully added a new Analogy"
      redirect_to Topic.find(params[:analogy][:topic_id])
    else
      flash[:notice]= "You did not sign in or have not added an Analogy"
      redirect_to(:back)
      #redirect_to root_path
    end
  end

  def edit
    @analogy = Analogy.find(params[:id])
    @topic = Topic.find(params[:tid])
  end

  def update
     @analogy = Analogy.find(params[:id])
      
      if @analogy.update_attributes(params[:analogy])
        flash[:notice]= "You have successfully updated the Analogy"
        redirect_to Topic.find(params[:analogy][:topic_id])
      else
        flash[:notice]= "You have not updated the Analogy"
        redirect_to(:back)
        #redirect_to root_path
      end
  end

  def destroy
  end
end
