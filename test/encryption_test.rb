require_relative './test_helper'
require './lib/shift'
require './lib/encryption'

class EncryptionTest < Minitest::Test

  def setup
    @encryption = Encryption.new
    @key1 = "02715"
    @date1 = "040895"
    @message1 = "hello world"
    # @shift1 = Shift.shift_array(@key1, @date1)
  end

  def test_it_exists
    assert_instance_of Encryption, @encryption
  end

  # def test_it_can_create_shift_hash
  #   assert_equal ({a: 3, b: 27, c: 73, d: 20}), @encryption.shift_hash(@key1, @date1)
  # end

end
