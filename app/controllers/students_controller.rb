class StudentsController < ApplicationController

    def index
      @students = Student.all
    end
  
    def show
      @student = find_by_id
    end 
  
    def new
      @student = Student.new 
    end 
  
    def create
         @student = Student.new(student_params) 

      if @student.valid? 
         @student.save
        redirect_to student_path(@student)
      else 
        render :new
      end
    end 

    def edit
        @student = find_by_id
    end

    def update
        @student = find_by_id 
        @student.update(student_params) 

          if @student.save
          redirect_to student_path(@student)
        else 
          render :edit
        end 
    end

    def destroy
        @student = find_by_id
        @student.destroy
        redirect_to students_path
    end 
  private 
    def student_params
      params.require(:student).permit(:name, :email, :grade, :password_digest)
    end

    def find_by_id
      Student.find(params[:id])
    end
  end