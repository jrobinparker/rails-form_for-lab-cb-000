class StudentsController < ApplicationController
  before_filter :set_student, only: [:show, :edit]

  
  def show
  end

  def new
  end

  def create
    @student = Student.new
    @student.save
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
    @student = Student.update(student_params)
    @student.save 
    redirect_to student_path(@student)
  end
  
  private 
  
  def set_student 
    @student = Student.find(params[:id])
  end 
  
  def student_params 
    params.require(:student).permit(:first_name, :last_name)
  end 
  
end
