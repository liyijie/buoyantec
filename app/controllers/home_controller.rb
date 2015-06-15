class HomeController < ApplicationController
  def index
    @firms = Report.where(category:1).last(3)
    @trades = Report.where(category:2).last(2)
  end

  def error
    
  end

  def about
 
  end
end
