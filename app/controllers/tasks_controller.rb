class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    #@task = Task.new(name: params[:task][:name], description: params[:task][:description])
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    #@task.update(name: params[:task][:name], description: params[:task][:description], done: params[:task][:done])

    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  def task_params
    params.require(:task).permit(:name, :description, :done)
  end
end
