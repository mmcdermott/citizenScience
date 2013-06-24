# == Schema Information
#
# Table name: classification_data
#
#  id          :integer          not null, primary key
#  value       :integer
#  question_id :integer
#  user_id     :integer
#  anonymized  :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ClassificationDatum < ActiveRecord::Base
  attr_accessible :anonymized, :question_id, :user_id, :value

  #Relationships: 
  belongs_to :question
  belongs_to :user
end
