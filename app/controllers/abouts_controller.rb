class AboutsController < ApplicationController
  before_action :redirect_error
  def index
  end
  def company
    
  end
  def dtby
    
  end
  def team
    
  end
  def job
      @recruits = Recruit.all.per_page_kaminari(params[:page]).per(10)
  end

end