# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Report < ActiveRecord::Base
  has_one :image, class_name: "Image", as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image, :allow_destroy => true

end
