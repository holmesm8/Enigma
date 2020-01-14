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

  def test_it_can_encrypt_without_todays_date
    expected = {encryption: "lib sdmcvpu",
                key: "02715",
                date: Date.today.strftime("%m%d%y")
                }
    assert_equal expected, @enigma1.encrypt("Hello world", "02715")
  end

  def test_it_can_decrypt_without_todays_date
    expected = {decryption: "hello world",
                key: "02715",
                date: Date.today.strftime("%m%d%y")
                }
    assert_equal expected, @enigma1.decrypt("lib sdmcvpu", "02715")
  end
end
