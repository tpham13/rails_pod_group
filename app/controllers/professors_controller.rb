
class ProfessorsController < ApplicationController

    def index
      @professors = Professor.all
    end
  
    def show
      @professor = find_by_id
    end 
  
    def new
      @professor = Professor.new 
    end 
  
    def create
      @professor = Professor.new(professor_params)
      if @professor.valid?
        @professor.save
        redirect_to professors_path
      else
        render :new
    end 
  end

    def edit
        @professor = find_by_id
    end

    def update
        @professor = find_by_id
        if @professor.valid?
          @professor.update(professor_params)
          redirect_to professor_path
        else
          render :edit
        end
    end

    def destroy
        @professor = find_by_id
        @professor.destroy
        redirect_to professors_path
    end 
    
    private
   
    def professor_params
      params.require(:professor).permit(:name)
    end

    def find_by_id
      Professor.find(params[:id])
    end
  end