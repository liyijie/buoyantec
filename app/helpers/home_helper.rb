module HomeHelper
  def active_head_content report
    "<h4 class=\"list-group-item-heading blue\">#{report.title} <small>[#{report.created_at.to_date}]</small></h4>"
  end

  def head_content report
    "<h5 class=\"list-group-item-heading\">#{report.title} <small>[#{report.created_at.to_date}]</small></h5>"
  end
end
