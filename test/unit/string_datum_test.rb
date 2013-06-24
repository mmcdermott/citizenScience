# == Schema Information
#
# Table name: string_data
#
#  id          :integer          not null, primary key
#  value       :string(255)
#  question_id :integer
#  user_id     :integer
#  anonymized  :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class StringDatumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
