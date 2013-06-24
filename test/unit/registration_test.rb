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

require 'test_helper'

class RegistrationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
