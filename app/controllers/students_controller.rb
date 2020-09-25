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
      @student = Student.create(params.require(:student).permit(:name, :email, :grade, :password_digest))
      if @student 
        redirect_to student_path(@student)
      else 
        render :new
      end
    end 

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        if @student.update(params.require(:student).permit(:name, :email, :grade, :password_digest))
          redirect_to student_path(@student)
        else 
          render :edit
        end 
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to students_path
    end 
  
  end