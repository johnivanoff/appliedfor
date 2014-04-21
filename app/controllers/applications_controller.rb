class ApplicationsController < ApplicationController
  
  def index
    @applications = Application.all
  end
  
  def show
    @application = Application.find(params[:id])
  end
  
  def new
    
  end
  
  def create
    @application = Application.new(application_params)
 
    @application.save
    redirect_to @application
  end
  
  

  private
    def application_params
      params.require(:application).permit(:company, :position, :applied_on, :refer, :found_on)
    end
  
end
