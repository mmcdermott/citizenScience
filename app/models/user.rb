# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email

  #Relationships:
  has_one :profile
  has_many :tests
  has_many :classification_data
  has_many :numeric_data
  has_many :string_data
  has_many :tests, through: :registrations, uniq: true
  has_many :created_tests, class_name: 'Test', inverse_of: :creator, foreign_key: 'creator_id'
end
