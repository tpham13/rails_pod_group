class StudentsController < ApplicationController

    def index
      @students = Student.all
    end
  
    def show
      @student = Student.find(params[:id])
    end 
  
    def new
      @student = Student.new 
    end 
  
    def create
      @student = Student.create(params.require(:student).permit(:name))
      redirect_to students_path
    end 

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(params.require(:student).permit(:name))
        redirect_to student
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to students_path
    end 
  
  end