class Banner < ActiveRecord::Base
	has_one :image, class_name: "Image", as: :imageable, dependent: :destroy
	accepts_nested_attributes_for :image, :allow_destroy => true
end
