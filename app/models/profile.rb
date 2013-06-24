class Profile < ActiveRecord::Base
  attr_accessible :bio, :nickname, :user_id

  #Relationships
  belongs_to :user
end
