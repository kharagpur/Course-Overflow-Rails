class PagesController < ApplicationController
  def home
	@stylesheet = "style.css"
	@dept = Department.all
  end

end
