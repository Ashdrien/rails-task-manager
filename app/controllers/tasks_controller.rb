class TasksController < ApplicationController
  before_action :task_find, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    task_find
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    task_find
  end

  def update
    task_find
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    task_find
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def task_find
    @task = Task.find(params[:id])
  end
end
