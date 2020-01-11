require_relative './test_helper'
require './lib/key'

class KeyTest < Minitest::Test

  def setup
    @key1 = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key1
  end

  def test_it_has_attributes
    assert_equal "12345", @key1.random_key
  end

  def test_it_can_generate_random_5_digit_key
    skip
    @key1.generate_random_key
    assert_equal "52134", @key1.random_key
  end

end
