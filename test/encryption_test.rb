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
    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "], @encryption1.letters_array
  end

  def test_it_can_turn_message_string_into_array
    assert_equal ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"], @encryption1.message_array(@message1)
  end

  # def test_it_can_change_message1_with_shift_hash
  #   assert_equal "keder ohulw!", @encryption1.shift_thing(@message1, @key1, @date1)
  # end

end
