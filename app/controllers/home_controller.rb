class HomeController < ApplicationController
  before_action :redirect_error, except: :error
  def index
    @banners = Banner.all.order(:number)
    company_news = Report.where(category:1).order("created_at DESC")
    if company_news.count < 5
      @firms = company_news.limit(company_news.count)
      @trades = Report.where(category:2).order("created_at DESC").limit(5 - company_news.count)
    else
      @firms = company_news.limit(5)
      @trades = []
    end
  end

  def error
    render :layout => false
  end

  def about
  end
end
