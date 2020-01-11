require_relative './test_helper'
require './lib/key_gen'

class KeyGenTest < Minitest::Test

  def setup
    @key1 = KeyGen.new
  end

  def test_it_exists
    assert_instance_of KeyGen, @key1
  end

  def test_it_can_generate_random_5_digit_key
    skip
    assert_equal "52134", KeyGen.generate_random_key
  end
end
