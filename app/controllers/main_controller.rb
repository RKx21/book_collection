class MainController < ApplicationController
    def index
      @books=Task.all
      @task=Task.first
      @tasks = Task.order(created_at: :asc)
      
    end
end
