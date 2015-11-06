# == Schema Information
#
# Table name: recruits
#
#  id         :integer          not null, primary key
#  position   :string
#  address    :string
#  quantity   :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Recruit < ActiveRecord::Base
end
