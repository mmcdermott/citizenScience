# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  question    :text
#  answer_type :integer
#  test_id     :integer
#  input_label :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Question < ActiveRecord::Base
  attr_accessible :answer_type, :question, :test_id, :input_label
  
  #Relationships:
  has_many :classification_data
  has_many :numeric_data
  has_many :string_data
  has_many :users, through: :classification_data
  has_many :users, through: :string_data
  has_many :users, through: :numeric_data
  belongs_to :test
end
