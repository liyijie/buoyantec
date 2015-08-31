class HomeController < ApplicationController
  def index
    num = Report.where(category:1).count
    if num < 5
    	@firms = Report.where(category:1).order("created_at DESC").limit(num)
    	@trades = Report.where(category:2).order("created_at DESC").limit(5 - num)
    else
    	@firms = Report.where(category:1).order("created_at DESC").limit(5)
    	@trades = Report.where(category:2).order("created_at DESC").limit(0)
    end
  end

  def error
    
  end

  def about
 
  end
end
