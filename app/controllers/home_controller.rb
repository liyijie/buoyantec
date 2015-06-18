class HomeController < ApplicationController
  def index
    @firms = Report.where(category:1).order("created_at DESC").limit(3)
    @trades = Report.where(category:2).order("created_at DESC").limit(2)
  end

  def error
    
  end

  def about
 
  end
end
