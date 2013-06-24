# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  nickname   :string(255)
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ActiveRecord::Base
  attr_accessible :bio, :nickname, :user_id

  #Relationships
  belongs_to :user
end
