# == Schema Information
#
# Table name: numeric_data
#
#  id          :integer          not null, primary key
#  value       :float
#  question_id :integer
#  user_id     :integer
#  anonymized  :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class NumericDatumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
