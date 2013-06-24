class ClassificationDatum < ActiveRecord::Base
  attr_accessible :anonymized, :question_id, :user_id, :value

  #Relationships: 
  belongs_to :question
  belongs_to :user
end
