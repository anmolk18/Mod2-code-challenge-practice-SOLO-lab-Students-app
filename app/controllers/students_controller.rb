class StudentsController < ApplicationController

  before_action :current_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show 
  end

  def new 
    @student = Student.new
  end 

  def create 
    @student = Student.new(student_params)
    if @student.valid? 
      @student.save 
      redirect_to "/instructors/#{@student.instructor.id}"
    else 
      flash[:errors] = @student.errors.full_messages
      render :new
    end
  end

  def edit 
  end 

  def update
    @student.update(student_params)
    if @student.valid?
      @student.save
      redirect_to student_path(@student)
    else
      flash[:errors] = @student.errors.full_messages
      render :edit
    end
  end

  private 

  def current_student
    @student = Student.find(params[:id])
  end

  def student_params 
    params.require(:student).permit!
  end 
  
end
