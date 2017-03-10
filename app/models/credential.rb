# == Schema Information
#
# Table name: credentials
#
#  id              :integer          not null, primary key
#  name            :string
#  cer_number      :string
#  score           :integer
#  cer_type        :string
#  start_date      :date
#  end_date        :date
#  identity_number :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Credential < ApplicationRecord
	validates_uniqueness_of :cer_number, :message => "该证书已存在!"
end
