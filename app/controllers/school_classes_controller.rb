class SchoolClassesController < ApplicationController
  before_filter :set_school_class, only: [:show, :edit]
  before_filter :school_class_params, only: [:create, :update]
  
  def show
  end

  def new
  end

  def create
    @school_class = SchoolClass.new
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  def update
    @school_class = SchoolClass.update
    @school_class.save 
    redirect_to school_class_path(@school_class)
  end
  
  private 
  
  def set_school_class 
    @school_class = SchoolClass.find(params[:id])
  end 
  
  def school_class_params 
    params.require(:school_class).permit(:title, :room_number)
  end 
  
end

