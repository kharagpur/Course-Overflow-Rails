module TopicsHelper
  def defins(top)
	Definition.where(:topic_id => top.id)
  end

  def analogs(top)
	Analogy.where(:topic_id => top.id)
  end        

  def vids(top)
	Video.where(:topic_id => top.id)
  end
  
  #vid is a user id 
  def use(vid)
	User.find(vid)
  end
end
