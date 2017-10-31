class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
    #partial form for new page then on submit it will create
  end

  def create
    task = Task.new(task_params)
    task.save
    #create new task - save it
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_path
  end

  def task_params
    params.require(:task).permit(:name, :details)
  end




end
