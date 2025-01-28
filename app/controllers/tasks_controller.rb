class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def show
        @task = Task.find(params[:id])
    end

    def new
        @task = Task.new()
    end

    def create
        @task = Task.new(book_params)
        if @task.save
            redirect_to tasks_path
        else
            render("new")
        end
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        if @task.update(book_params)
            redirect_to task_path(@task)
        else
            render("edit")
        end
    end

    def delete
    end

    def destroy
    end

    private

    def book_params
        params.require(:task).permit(
            :title,
            :author,
            :price,
            :published_date
        )
    end
end
