class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = Project.all
  end

  def show 
    @project = Project.find(params[:id]) 
    @tasks = @project.tasks 
  end 

  def new 
    @project = Project.new 
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to '/projects/'
    else
      render 'new'
    end  
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to '/projects'
  end

  private
  def project_params
    params.require(:project).permit(:name)
  end
end
