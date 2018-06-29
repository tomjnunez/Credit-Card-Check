require 'minitest/autorun'
require 'minitest/pride'
require_relative 'credit_check_class.rb'

class CreditCheckTest < Minitest::Test
  def test_start
    credit_check = CreditCheck.new
    assert_equal true, credit_check.valid_number?(5541808923795240)
  end
end
