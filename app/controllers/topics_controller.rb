class TopicsController < ApplicationController
  def new
    @topic = Topic.new
    @course = Course.find(params[:id])
    
  end
  
  def show
    @topic = Topic.find(params[:id])    
    @course = Course.find(@topic.course_id)    
    @stylesheet = "content.css"
  end
  
  def create 
    if signed_in?    
      @topic = Topic.new(params[:topic])            
      if @topic.save
        flash[:notice]="You successfuly created a new Topic"        
        redirect_to Course.find(params[:topic][:course_id])
      else
        flash[:notice]=" Error: Topic was not successfully created!"
       redirect_to (:back)
      end
    end
  end
  
 def form_error
    @stylesheet = "content.css"
  end
  
  def add_definition
    @course = Course.find(params[:id])    
    @definition = Definition.new
    redirect_to "definitions/new"
  end
  
  def edit
    @topic = Topic.find(params[:id])
    @course = Course.find(@topic.course_id)
  end
  
  def update
    @topic = Topic.find(params[:id])
    
    if @topic.update_attributes(params[:topic])
      flash[:notice]="You successfuly edited the Topic"      
      
      redirect_to :action => 'show', :id => @topic.id
    else
      flash[:notice]="Edit failed!" 
     redirect_to (:back)
      
    end
  end
  
end
