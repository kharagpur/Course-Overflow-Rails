class DefinitionsController < ApplicationController
  
  def create    
    @definition = Definition.new(params[:definition])    
    @definition.user = user_from_remember_token      
    if @definition.save
       flash[:notice]="You successfuly created a new Definition"       
       redirect_to Topic.find(params[:definition][:topic_id]) 
    else
      flash[:notice]="You did not sign in or have not added a definition"
      redirect_to(:back)     
    end 
  end

  def new
    @definition=Definition.new
    if params[:tid].nil?
      #do nothing      
    else
      @topic = Topic.find(params[:tid])
    end
  end
  
  def edit
    @definition = Definition.find(params[:id])
    if params[:tid].nil?
      #do nothing      
    else
      @topic = Topic.find(params[:tid])
    end
    
  end
  
  def update
    @definition = Definition.find(params[:id])    
           
      if @definition.update_attributes(params[:definition])
         flash[:notice]="You successfuly updated the Definition"       
         redirect_to Topic.find(params[:definition][:topic_id]) 
      else
        flash[:notice]="You have not updated the definition"
        redirect_to(:back)     
      end
  end
  
  
end
