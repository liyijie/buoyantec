class HomeController < ApplicationController
  def index
    @active_report = Report.order('created_at DESC').first
    @reports = Report.order('created_at DESC').offset(1).first(6)
  end

  def error
    
  end

  def about
 
  end
end
