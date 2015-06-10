class CasesController < ApplicationController
  def index
    @pic_text={
       "1"=>"多功能ICT展厅",
       "2"=>"移动通信实训室",
       "3"=>"WEB软件开发实训室",
       "4"=>"IOS软件开发实训室",
       "5"=>"物联网实训室",
       "6"=>"智慧农业实训系统",
       "7"=>"设备管理实训系统"
    }
  end
end