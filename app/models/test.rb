class Test < ActiveRecord::Base
  attr_accessible :description, :frequency, :published

  #Relationships:
  has_many :questions
  has_many :classification_data, through: :questions
  has_many :numeric_data, through: :questions
  has_many :string_data, through: :questions
  has_many :users, through: :registrations
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
end
