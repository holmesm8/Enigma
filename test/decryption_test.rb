require_relative './test_helper'
require './lib/shift'
require './lib/decryption'

class DecryptionTest < Minitest::Test

  def setup
    @decryption1 = Decryption.new
    @key1 = "02715"
    @date1 = "040895"
    @message1 = "keder ohulw"
  end

  def test_it_exists
    assert_instance_of Decryption, @decryption1
  end

  def test_it_has_attributes
    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "], @decryption1.alphabet
  end

  def test_it_can_change_message_with_shift_hash
    assert_equal "hello world", @decryption1.unshift_message(@message1, @key1, @date1)
  end

  def test_it_can_return_a_special_character
    assert_equal "!", @decryption1.unshift_message("!", @key1, @date1)
  end
end
