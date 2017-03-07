class EnterpriseController < ApplicationController
  def index
    @channel_infos = [
      {name: "大唐电信科技股份有限公司", logo: "logo_group.gif", url: "http://www.datang.com"},
      {name: "大唐移动通信设备有限公司", logo: "logo_dt.gif", url: "http://www.datangmobile.cn"},
      {name: "联芯科技有限公司", logo: "logo_lx.png", url: "http://www.leadcoretech.com"},
      {name: "大唐高鸿数据网络技术股份有限公司", logo: "logo_gh.png", url: "http://www.gohigh.com.cn"},
      {name: "电信科学技术仪表研究所", logo: "logo_yb.png", url: "http://www.dxyb.com"},
      {name: "成都大唐线缆有限公司", logo: "logo_cdxl.png", url: "http://www.datang.com"},
      {name: "北京畅通达通信技术有限公司", logo: "logo_ctd.png", url: "http://www.ctdt.com.cn"},
      {name: "晨讯科技集团", logo: "logo_sim.png", url: "http://www.sim.com"},
      {name: "龙旗控股有限公司", logo: "logo_lq.png", url: "http://www.longcheertel.com"},
      {name: "腾讯创业基地(杭州)", logo: "logo_tx.png", url: "http://open.qq.com"},
    ]
  end

  def techno_college
    
  end

  def project_college
    
  end
end

