module CoursesHelper
  
  def get_defs(concept)
	Definition.limit(1).where(:content_id => concept.id).order("rating_up - rating_down DESC")
  end

  def get_analogs(concept)
	Analogy.limit(1).where(:content_id => concept.id).order("rating_up - rating_down DESC")
  end        

  def get_videos(concept)
	Video.limit(1).where(:content_id => concept.id).order("rating_up - rating_down DESC")
  end
end
