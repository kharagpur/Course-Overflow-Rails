class CoursesController < ApplicationController
  
  def index
  end
  
  def show
      @course = Course.find(params[:id])
      @title = @course.title
      @stylesheet = "content.css"
      @current_user = user_from_remember_token
      @concept = Topic.where(:course_id => @course.id)

  end
  
  def createcourse
    @course = Course.find(params[:id])
    @stylesheet = "popup.css"
  end

  def create
    @concept = Content.new(params[:concept])
    if @concept.save
	flash[:success] = "New concept successfully created."
        redirect_to Course.find(params[:concept][:course_id])
    end
      
  end

  # Landing page for list of discussion questions
  # beloning to a specific course
  # ----------------------------------------------
  def questions
    store_location
    @stylesheet = "questions.css"
    @course = Course.find(params[:id])
    @question = current_user.questions.build if signed_in?
    # Order by "unanswered if nil"
    if !params[:order].nil?
      @lists = Question.select("questions.*, count(answers.id) as num_answers").joins("LEFT OUTER JOIN answers ON answers.question_id = questions.id").where("course_id=?", @course.id).group("questions.id").order("num_answers ASC").paginate(:per_page => 5, page: params[:page])
      render 'courses/questions_unanswered'
    else
      @lists = Question.select("questions.*, count(answers.id) as num_answers").joins("LEFT OUTER JOIN answers ON answers.question_id = questions.id").where("course_id=?", @course.id).group("questions.id").order("created_at DESC").paginate(:per_page => 5, page: params[:page])
      render 'courses/questions'
    end
  end

  # Specific Question and Corresponding Answers
  # -------------------------------------------
  def answers
    store_location
    @stylesheet = "questions"
    @course = Course.find(params[:id])
    @question = Question.find(params[:qid])

    #Bayesian Rating -  Get average rating, and average number of votes
    avg_and_total = ActiveRecord::Base.connection.execute("
      SELECT AVG(rating) avgrating, AVG(total) avgtotal 
      FROM (SELECT upvotes, downvotes, (ifnull(upvotes,0) + ifnull(downvotes, 0)) total ,((ifnull(upvotes,0)+1) * 100 / (ifnull(upvotes,0) + ifnull(downvotes,0) + 2)) as rating 
        FROM answers, answers a, answers b 
        LEFT OUTER JOIN (SELECT answer_id, count(votes.id) as upvotes FROM votes WHERE vote_type = 't' GROUP BY answer_id) AS a ON answers.id = a.answer_id 
        LEFT OUTER JOIN (SELECT answer_id, count(votes.id) as downvotes FROM votes WHERE vote_type = 'f' GROUP BY answer_id) AS b ON answers.id = b.answer_id 
        GROUP BY answers.id)")

    avgrating = avg_and_total[0]['avgrating'].to_f
    avgtotal = avg_and_total[0]['avgtotal'].to_f
    avgval = avgrating * avgtotal

    @answers = Answer.select("answers.*, upvotes, downvotes, 
                            ((ifnull(upvotes,0)+1) * 100 / (ifnull(upvotes,0) + ifnull(downvotes,0) + 2)) rating,
                            ((( ifnull(upvotes, 0) + ifnull(downvotes,0) ) * ((ifnull(upvotes,0)+1) * 100 / (ifnull(upvotes,0) + ifnull(downvotes,0) + 2)) + #{avgval}) / (( ifnull(upvotes, 0) + ifnull(downvotes,0)) + #{avgtotal})) score,
                             email")
                     .joins("LEFT JOIN (SELECT answer_id, count(*) upvotes FROM votes WHERE vote_type = 't' GROUP BY answer_id) AS a ON answers.id = a.answer_id")
                     .joins("LEFT JOIN (SELECT answer_id, count(*) downvotes FROM votes WHERE vote_type = 'f' GROUP BY answer_id) AS b ON answers.id = b.answer_id")
                     .joins(:user).where("answers.question_id = ?", @question.id)
                     .group("answers.id")
                     .order("(score) DESC")
    @user_ans = current_user.answers.build if signed_in?
  end
  #New Topic
  def new_topic
    @course = Course.find(params[:id])
    redirect_to :controller => 'topics', :action =>'new'
  end
end

