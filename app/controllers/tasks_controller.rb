class TasksController < ApplicationController

  # As a user, I can list tasks
  # CRUD -> Read all tasks
  def index
    @tasks = Task.all
  end

  # As a user, I can view the details of a task
  # CRUD -> Read one task
  def show
    @task = Task.find(params[:id])
    # @status = Task.find(params[:id]).completed

    # if @status == true
    #   @status_text = 'This task is completed'
    # else
    #   @status_text = '<i class="fa-regular fa-square-check"></i>This task is not completed'
    # end

  end

  # As a user, I can edit a task
  # CRUD -> Update one task
  def edit
  end

  # place to send the new info

  def update
  end

  # As a user, I can remove a task
  # CRUD -> Delete one task

  def destroy
  end
end
