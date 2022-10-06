require 'csv'
class Api::V1::TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]
  
  def index
    @tasks = Task.where(user_id: params[:user_id])
    if params[:format] == "json"
      render json: @tasks
    elsif params[:format] == "csv"
      send_data @tasks.to_csv, filename: "users-#{Date.today}.csv"
    else
      render json: @tasks
    end
  end

  def show
    render json: @task
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      render json: @task
    else
      render error: {error: 'unable to create task.'}, status: 400
    end
  end

  def update
    if @task
      @task.update(task_params)
      render json: {message: 'task updated successfully'}, status: 200
    else
      render error: {error: 'unable to update task'}, status: 400
    end
  end

  def destroy
    if @task
      @task.destroy
      render json: {message: 'task successfully deleted'}, status: 200
    else
      render json: {error: 'Unable to delete task'}, status: 400
    end
  end

  private

  def task_params
     params.permit(:task_name, :aim, :user_id)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
