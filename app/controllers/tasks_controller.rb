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
            render('new')
        end
    end

    def edit
    end

    def update
    end

    def delete
    end 

    def destroy
    end

    def book_params 
        params.require(:task).permit(
            :title, 
            :author, 
            :price,
            :published_date
        )
    end
end