class TasksController < ApplicationController
  before_action :authenticate_user!
  def show
    @task = Task.find(params[:id])
  end

  def new 
    @task = Task.new 
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to "/projects/#{task_params['project_id']}"
    else
      render 'new'
    end  
  end

  def edit 
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
      if @task.update(task_params)
        if params['user']['id'] != ''
          @task.users << User.find(params['user']['id'])
        end
        redirect_to "/projects/#{@task.project.id}"
      else
        render 'edit'
      end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_back fallback_location: @post
  end

  def destroy_u
    @user = User.find(params[:id])
    @user.destroy
    redirect_back fallback_location: @post
  end
  
  private 
  def task_params 
    params.require(:task).permit(:title, :description, :status, :project_id, :id) 
  end
end
