class EnterpriseController < ApplicationController
  def index
  	@channel_logo = {
  		"0" => "logo_group.gif",
  		"1" => "logo_dt.gif",
  		"2" => "logo_lx.png",
  		"3" => "logo_gh.png",
  		"4" => "logo_yb.png",
  		"5" => "logo_cdxl.png",
  		"6" => "logo_ctd.png",
  		"7" => "logo_sim.png",
  		"8" => "logo_lq.png",
  		"9" => "logo_tx.png"
  	}
  	@channel_name = {
  		"0" => "大唐电信科技股份有限公司",
  		"1" => "大唐移动通信设备有限公司",
  		"2" => "联芯科技有限公司",
  		"3" => "大唐高鸿数据网络技术股份有限公司",
  		"4" => "电信科学技术仪表研究所",
  		"5" => "成都大唐线缆有限公司",
  		"6" => "北京畅通达通信技术有限公司",
  		"7" => "晨讯科技集团",
  		"8" => "龙旗控股有限公司",
  		"9" => "腾讯创业基地(杭州)"
  	}
  end
end
