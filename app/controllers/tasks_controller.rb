class TasksController < ApplicationController
  def index
    @tasks = Task.order(created_at: :asc)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(book_params)
    if @task.save
      flash[:notice] = "Book was successfully created."
      redirect_to tasks_path
    else
      flash[:alert] = @task.errors.full_messages.to_sentence
      render "new"
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(book_params)
       flash[:notice] = "Book was successfully updated."
       redirect_to task_path(@task)
    else
        flash[:alert] = @task.errors.full_messages.to_sentence
        render "edit"
    end
  end

  def delete
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = "Book was successfully deleted."
    redirect_to tasks_path
  end

  private

  def book_params
    params.require(:task).permit(:author)
  end
end
