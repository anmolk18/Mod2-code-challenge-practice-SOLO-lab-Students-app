class InstructorsController < ApplicationController

  def index
    @instructors = Instructor.all
  end

  def show 
    @instructor = Instructor.all.find(params[:id])
  end 

end
