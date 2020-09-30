class CoursesController < ApplicationController

    def index
      @courses = Course.all
    end
  
    def show
      @course = find_by_id
    end 
  
    def new
      @course = Course.new 
    end 
  
    def create
      if @course 
        redirect_to course_path(@course)
      else 
        render :new
      end
    end 
    
    def edit
      @course = find_by_id
    end
    
    def update
      @course = find_by_id
      if @course.update(course_params)
        redirect_to course_path(@course)
      else 
        render :edit
      end 
    end
    
    def destroy
      @course = find_by_id
      @course.destroy
      redirect_to courses_path
    end 
    
    private
    
    def course_params
      params.require(:course).permit(:name, :subject, :course_time, :professor_id, :student_id)
    end

    def find_by_id
      Course.find(params[:id])
    end
  end