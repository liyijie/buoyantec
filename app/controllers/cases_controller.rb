class CasesController < ApplicationController
  def edu
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

  def train
    @train_text={
      "1"=>"移动互联网产教研协同基地培训班开班典礼",
      "2"=>"领导致辞",
      "3"=>"实习实训结业典礼",
      "4"=>"安师大学生实训课程"
    }
  end

  def industry
    @pic_text={
     "8"=>"上海浦东气象局微信公众号开发",
     "9"=>"上海市气象局业务平台开发项目",
     "10"=>"上海弘飞等洗涤设备企业的自动化控制系统",
     "11"=>"上海大众整车厂VDC仓储系统"
    }
  end

  def things
    
  end
end