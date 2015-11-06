class ReportsController < ApplicationController
  before_action :redirect_error

  # GET /reports
  def index
    if  params[:category].blank?
      @reports = Report.all.order("created_at DESC").per_page_kaminari(params[:page]).per(15)
    else
      @reports = Report.where(category: Report.categories[params[:category]]).order("created_at DESC").per_page_kaminari(params[:page]).per(15)
    end
  end

  # GET /reports/1
  def show
    @report = Report.find(params[:id])
    @report.update(view_count: @report.view_count.present? ? (@report.view_count + 1) : 1)
  end
end
