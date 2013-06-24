# == Schema Information
#
# Table name: numeric_data
#
#  id          :integer          not null, primary key
#  value       :float
#  question_id :integer
#  user_id     :integer
#  anonymized  :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class NumericDatum < ActiveRecord::Base
  attr_accessible :anonymized, :question_id, :user_id, :value

  #Relationships: 
  belongs_to :question
  belongs_to :user
end
