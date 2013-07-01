# == Schema Information
#
# Table name: string_data
#
#  id          :integer          not null, primary key
#  value       :string(255)
#  question_id :integer
#  user_id     :integer
#  anonymized  :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class StringDatum < ActiveRecord::Base
  attr_accessible :anonymized, :question_id, :user_id, :value

  #Relationships: 
  belongs_to :question
  belongs_to :user
end
