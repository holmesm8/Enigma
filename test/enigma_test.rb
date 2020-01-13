require_relative './test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma1 = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma1
  end

  def test_it_can_encrypt
    expected = {encryption: "keder ohulw",
                key: "02715",
                date: "040895"
                }
    assert_equal expected, @enigma1.encrypt("Hello world", "02715", "040895")
  end

  def test_it_can_decrypt
    expected = {decryption: "hello world",
                key: "02715",
                date: "040895"
                }
    assert_equal expected, @enigma1.decrypt("keder ohulw", "02715", "040895")
  end

  # def test_it_can_encrypt_with_todays_date
  #   encrypted = Enigma.new
  #   encrypted = enigma.encrypt("hello world", "02715")
  #   assert_equal "sdf", encrypted
  # end
end
