class Registration < ActiveRecord::Base
  attr_accessible :expiration_date, :frequency, :test_id, :user_id

  #Relationships: 
  belongs_to :test
  belongs_to :user
end
