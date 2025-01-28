class MainController < ApplicationController
    def index
      @books=Task.all
      @task=Task.first
    end
  
  end
  