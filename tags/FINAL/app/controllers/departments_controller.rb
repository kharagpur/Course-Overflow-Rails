class DepartmentsController < ApplicationController

  # Respond with list of courses in JSON
  def show
  	dept = Department.find(params[:id])
  	respond_to do |format|
  		format.json { render json: dept.courses}
  	end
  end
end
