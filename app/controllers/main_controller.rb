class MainController < ApplicationController
    def index
      @books=Task.all
    end
  
  end
  