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
      @recruits = Recruit.all.per_page_kaminari(params[:page]).per(10)
  end

# 战略伙伴
  def partner
    
  end

# 分支机构
  def organization
    
  end
end