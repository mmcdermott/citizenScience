class Question < ActiveRecord::Base
  attr_accessible :answer_type, :question, :test_id, :input_label
  
  #Relationships:
  has_many :classification_data
  has_many :numeric_data
  has_many :string_data
  belongs_to :test
end
