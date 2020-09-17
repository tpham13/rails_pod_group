class ProfessorsController < ApplicationController

  def index
    @professors = Professor.all
  end

  def show
    @professor = Professor.find(params[:id])
  end 

  def new
    @professor = Professor.new 
  end 

  def create
    @professor = Professor.create(params.require(:professor).permit(:name))
    redirect_to professors_path
  end 

end
