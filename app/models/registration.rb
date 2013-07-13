# == Schema Information
#
# Table name: registrations
#
#  id              :integer          not null, primary key
#  test_id         :integer
#  user_id         :integer
#  frequency       :integer
#  expiration_date :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Registration < ActiveRecord::Base
  attr_accessible :expiration_date, :frequency, :test_id, :user_id

  #Relationships: 
  belongs_to :metric
  belongs_to :user
end
