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

require 'test_helper'

class TestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
