# == Schema Information
#
# Table name: trains
#
#  id         :integer          not null, primary key
#  about      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Train < ActiveRecord::Base
	# has_mary :image, class_name: "Image", as: :imageable, dependent: :destroy
  # accepts_nested_attributes_for :image, :allow_destroy => true
end
