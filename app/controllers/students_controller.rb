class StudentsController < ApplicationController
  before_filter :set_student, only: [:show, :edit, :update]

  
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    Student.update(params.require(:student).permit(:first_name))
    redirect_to student_path(@student)
  end
  
end
