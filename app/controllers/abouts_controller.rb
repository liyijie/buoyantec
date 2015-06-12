class AboutsController < ApplicationController
  def index
  end
  def company
    
  end
  def dtby
    
  end
  def team
    
  end
  def job
      @recruits = Recruit.all.per_page_kaminari(params[:page]).per(1)
  end

  def  show
    @recruit = Recruit.find params[:id]
  end 
end