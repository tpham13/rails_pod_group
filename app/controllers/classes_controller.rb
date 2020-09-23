class ClassesController < ApplicationController

    def index
      @classes = Class.all
    end
  
    def show
      @class = Class.find(params[:id])
    end 
  
    def new
      @class = Class.new 
    end 
  
    def create
      @class = Class.create(params.require(:class).permit(:name, :subject, :class_time, :professor_id, :student_id))
      if @class 
        redirect_to class_path(@class)
      else 
        render :new
      end
    end 

    def edit
        @class = Class.find(params[:id])
    end

    def update
        @class = Class.find(params[:id])
        if @class.update(params.require(:class).permit(:name, :subject, :class_time, :professor_id, :student_id))
          redirect_to class_path(@class)
        else 
          render :edit
        end 
    end

    def destroy
        @class = Class.find(params[:id])
        @class.destroy
        redirect_to classes_path
    end 
  
  end