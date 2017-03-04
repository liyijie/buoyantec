# == Schema Information
#
# Table name: banners
#
#  id         :integer          not null, primary key
#  link       :text
#  number     :integer          default(1)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Banner < ActiveRecord::Base
	has_one :image, class_name: "Image", as: :imageable, dependent: :destroy
	accepts_nested_attributes_for :image, :allow_destroy => true
end
