class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    #@tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
   #@tasks = Task.find(params[:id])
  end

  def destroy
    #@tasks = Task.find(params[:id])
    @task.destroy
    redirect_to index_path
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def update
    #@tasks = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end
end

private
def task_params
  params.require(:task).permit(:title, :details, :completed)
end

def set_task
    @task = Task.find(params[:id])
end


