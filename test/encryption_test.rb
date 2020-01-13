require_relative './test_helper'
require './lib/shift'
require './lib/encryption'

class EncryptionTest < Minitest::Test

  def setup
    @encryption1 = Encryption.new
    @key1 = "02715"
    @date1 = "040895"
    @message1 = "hello world"
  end

  def test_it_exists
    assert_instance_of Encryption, @encryption1
  end

  def test_it_has_attributes
    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "], @encryption1.alphabet
  end

  def test_it_can_change_message_with_shift_hash
    assert_equal "keder ohulw", @encryption1.shift_message(@message1, @key1, @date1)
  end
end
