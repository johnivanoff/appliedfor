class ApplicationsController < ApplicationController
  
  def index
    @applications = Application.theirs(session[:user_id]).order(created_at: :desc)
  end
  
  def show
    @application = Application.find_by(id: params[:id], user_id: session[:user_id])
    if @application.nil?
      redirect_to applications_path, notice: 'No such record.'
    end
  end
  
  def new
  end
  
  def create
    @application = Application.new(application_params)
    @application.user_id = session[:user_id]
    
    @application.save
    redirect_to @application
  end
  
  def edit
    @application = Application.find(params[:id])
  end
  
  def update
    @application = Application.find(params[:id])
 
    if @application.update(application_params)
      redirect_to @application
    else
      render 'edit'
    end
  end
  
  def destroy
    @application = Application.find(params[:id])
    @application.destroy

    redirect_to applications_path
  end

  private
    def application_params
      params.require(:application).permit(:company, :position, :applied_on, :refer, :found_on, :user_id, :got_job)
    end
  
end
