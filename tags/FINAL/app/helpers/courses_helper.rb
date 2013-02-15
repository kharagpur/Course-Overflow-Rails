module CoursesHelper
  
  def get_defs(concept)
	Definition.limit(1).where(:topic_id => concept.id).order("rating_up - rating_down DESC")
  end

  def get_analogs(concept)
	Analogy.limit(1).where(:topic_id => concept.id).order("rating_up - rating_down DESC")
  end        

  def get_videos(concept)
	Video.limit(1).where(:topic_id => concept.id).order("rating_up - rating_down DESC")
  end

  def num_upvotes(type, id)
  	if type == 'analogy'
  		return AnalogyVote.where("analogy_id=? AND vote_type = 't'", id).count().to_s
  	end
  	if type == 'definition'
  		return DefinitionVote.where("definition_id=? AND vote_type = 't'", id).count().to_s
  	end
  	if type == 'video'
  		return VideoVote.where("video_id=? AND vote_type = 't'", id).count().to_s
  	end
  end

  def num_downvotes(type, id)
  	if type == 'analogy'
  		return AnalogyVote.where("analogy_id=? AND vote_type = 'f'", id).count().to_s
  	end
  	if type == 'definition'
  		return DefinitionVote.where("definition_id=? AND vote_type = 'f'", id).count().to_s
  	
  	end
  	if type == 'video'
  		return VideoVote.where("video_id=? AND vote_type = 't'", id).count().to_s
  	end
  end
end
