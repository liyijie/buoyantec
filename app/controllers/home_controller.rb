class HomeController < ApplicationController
  def index
    @reports = Report.last(3)
  end

  def error
    
  end

  def about
 
  end
end
