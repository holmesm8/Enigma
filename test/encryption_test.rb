require_relative './test_helper'
require './lib/shift'
require './lib/encryption'

class EncryptionTest < Minitest::Test

  def setup
    @encryption = Encryption.new
    @key1 = "02715"
    @date1 = "040895"
    @shift1 = Shift.shift_array(@key1, @date1)
  end

  def test_it_exists
    assert_instance_of Encryption, @encryption
  end

  
end
