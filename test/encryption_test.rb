require_relative './test_helper'
require './lib/shift'
require './lib/encryption'

class EncryptionTest < Minitest::Test

  def setup
    @encryption1 = Encryption.new
    @key1 = "02715"
    @date1 = "040895"
    @message1 = "hello world"
    # @shift1 = Shift.shift_array(@key1, @date1)
  end

  def test_it_exists
    assert_instance_of Encryption, @encryption1
  end

  def test_it_has_attributes
    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "], @encryption1.alphabet
  end

  def test_it_can_create_alphabet_index_pairs
    skip
    assert_equal [["a", 0], ["b", 1], ["c", 2], ["d", 3], ["e", 4], ["f", 5], ["g", 6], ["h", 7], ["i", 8], ["j", 9], ["k", 10], ["l", 11], ["m", 12], ["n", 13], ["o", 14], ["p", 15],
 ["q", 16], ["r", 17], ["s", 18], ["t", 19], ["u", 20], ["v", 21], ["w", 22], ["x", 23], ["y", 24], ["z", 25], [" ", 26]], @encryption1.alphabet_index_pairs
  end

  def test_it_can_return_shift_hash
    skip
    assert_equal ({a: 3, b: 27, c: 73, d: 20}), @encryption1.shift_values(@key1, @date1)
  end

  # def test_it_can_shift_alphabet
  #   skip
  #   assert_equal 1, @encryption1.shifted_alphabet
  # end

  # def test_it_can_turn_message_string_into_array
  #   skip
  #   assert_equal ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"], @encryption1.message_array(@message1, @key1, @date1)
  # end

  def test_it_can_change_message_with_shift_hash
    assert_equal "keder ohulw!", @encryption1.shifter(@message1, @key1, @date1)
  end
end
