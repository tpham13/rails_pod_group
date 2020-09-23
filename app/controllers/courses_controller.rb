class CoursesController < ApplicationController

    def index
      @courses = Course.all
    end
  
    def show
      @course = Course.find(params[:id])
    end 
  
    def new
      @course = Course.new 
    end 
  
    def create
      @course = Course.create(params.require(:course).permit(:name, :subject, :class_time, :professor_id, :student_id))
      if @course 
        redirect_to course_path(@course)
      else 
        render :new
      end
    end 

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        if @course.update(params.require(:course).permit(:name, :subject, :course_time))
          redirect_to course_path(@course)
        else 
          render :edit
        end 
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        redirect_to courses_path
    end 
  
  end