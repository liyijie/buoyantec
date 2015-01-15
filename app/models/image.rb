# == Schema Information
#
# Table name: images
#
#  id                 :integer          not null, primary key
#  desc               :string
#  imageable_id       :integer
#  imageable_type     :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

class Image < ActiveRecord::Base
end
