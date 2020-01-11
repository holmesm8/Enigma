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

  # def test_it_can_separate_key_string_into_pairs
  #   assert_equal ["02", "27", "71", "15"], Shift.key_pairs(@key1)
  # end

  def test_it_can_transform_key_into_array
    assert_equal [02, 27, 71, 15], Shift.key_array(@key1)
  end

  def test_it_can_transform_offset_into_array
    assert_equal [1, 0, 2, 5], Shift.offset_array(@date1)
  end

  def test_it_can_combine_key_and_offset

  end
end
