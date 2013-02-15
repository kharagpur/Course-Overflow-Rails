class VideosController < ApplicationController
  def new
    @video = Video.new(:description => "http://www")
    @topic = Topic.find(params[:tid])
  end

  def create
    @video = Video.new(params[:video])
    @video.user = user_from_remember_token
    if @video.save
      flash[:notice]= "You have successfully added a new Video Link "
      redirect_to Topic.find(params[:video][:topic_id])
    else
      flash[:notice]= "You did not sign in or have not added an Analogy"
      redirect_to(:back)
    end
  end
  
  def edit
    @video = Video.find(params[:id]) 
     @topic = Topic.find(params[:tid])
  end
  
  def update
    @video = Video.find(params[:id])
   
    if @video.update_attributes(params[:video])
      flash[:notice]= "You have successfully updated the Video Link "
      redirect_to Topic.find(params[:video][:topic_id])
    else
      flash[:notice]= "You have not added an Analogy"
      redirect_to(:back)
      #render 'edit'
    end
  end

 
end
