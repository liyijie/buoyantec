# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  category   :integer          default("company")
#  source     :string
#  view_count :integer
#

class Report < ActiveRecord::Base
  has_one :image, class_name: "Image", as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image, :allow_destroy => true

  enum category: {company: 1, industry: 2, activity: 3}
  ReportCategory = {company: '公司新闻', industry: '行业动态', activity: '最新活动'}
end
