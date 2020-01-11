require_relative './test_helper'
require './lib/key_gen'
require './lib/date_gen'
require './lib/shift'

class ShiftTest < Minitest::Test

  def setup
    # @shift1 = Shift.new
    @key1 = "02715"
    @date1 = "040895"
    # @key1 = KeyGen.generate_random_key
    # @date1 = DateGen.current_date
  end

  # def test_it_has_attributes
  #   skip
  # end

  # def test_it_can_return_key_placements
  #   assert_equal 02, Shift.a_return(@key1)
  #   assert_equal 27, Shift.b_return(@key1)
  #   assert_equal 71, Shift.c_return(@key1)
  #   assert_equal 15, Shift.d_return(@key1)
  # end

  def test_it_can_return_the_key_in_an_array
    assert_equal [0, 2, 7, 1, 5], Shift.key_array(@key1)
  end

  def test_it_can_create_offset_into_array
    assert_equal [1, 0, 2, 5], Shift.create_offset_array(@date1)
  end


  def test_it_can_create_shift
    skip
    assert_equal 3, Shift.a_shift(@date1)
    assert_equal 27, Shift.b_shift(@date1)
    assert_equal 73, Shift.c_shift(@date1)
    assert_equal 20, Shift.d_shift(@date1)
  end
end
