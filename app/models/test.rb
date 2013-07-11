# == Schema Information
#
# Table name: tests
#
#  id          :integer          not null, primary key
#  frequency   :integer
#  description :text
#  published   :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Test < ActiveRecord::Base
  attr_accessible :description, :frequency, :published, :name, :questions_attributes, :question_attributes, :creator_id

  #Relationships:
  has_many :questions, dependent: :destroy
  has_many :classification_data, through: :questions, dependent: :destroy
  has_many :numeric_data,        through: :questions, dependent: :destroy
  has_many :string_data,         through: :questions, dependent: :destroy
  has_many :users,               through: :registrations
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  accepts_nested_attributes_for :questions
end
