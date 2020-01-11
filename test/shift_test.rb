require_relative './test_helper'
require './lib/key'

class ShiftTest < Minitest::Test

  def setup
    @shift1 = Shift.new
  end

  def test_it_exists
    assert_instance_of Shift, @shift1
  end
end
