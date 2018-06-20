class SchoolClassesController < ApplicationController
  before_filter :set_school_class, only: [:show, :edit]

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  def update
    @school_class = SchoolClass.update(params.require(:school_class).permit(:title, :room_number))
    @school_class.save 
    redirect_to school_class_path(@school_class)
  end
  
  private 
  
  def set_school_class 
    @school_class = SchoolClass.find(params[:id])
  end 
  
end

