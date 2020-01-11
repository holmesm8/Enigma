require_relative './test_helper'
require './lib/key_gen'
require './lib/date_gen'
require './lib/shift'

class ShiftTest < Minitest::Test

  def setup
    @shift1 = Shift.new
    @key1 = "02715"
    @date1 = "040895"
    # @key1 = KeyGen.generate_random_key
    # @date1 = DateGen.current_date
  end

  def test_it_exists
    assert_instance_of Shift, @shift1
  end

  def test_it_has_attributes
    skip
  end

  def test_it_can_return_key_placements
    assert_equal 02, @shift1.a_return(@key1)
    assert_equal 27, @shift1.b_return(@key1)
    assert_equal 71, @shift1.c_return(@key1)
    assert_equal 15, @shift1.d_return(@key1)
  end

end
