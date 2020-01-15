require_relative './test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma1 = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma1
  end

  def test_it_can_encrypt_with_key_and_date_provided
    expected = {encryption: "keder ohulw",
                key: "02715",
                date: "040895"
                }
    assert_equal expected, @enigma1.encrypt("Hello world", "02715", "040895")
  end

  def test_it_can_decrypt_with_key_and_date_provided
    expected = {decryption: "hello world",
                key: "02715",
                date: "040895"
                }
    assert_equal expected, @enigma1.decrypt("keder ohulw", "02715", "040895")
  end

  def test_it_can_encrypt_with_key_and_todays_date
    expected = {encryption: "jib qdmctpu",
                key: "02715",
                date: Date.today.strftime("%m%d%y")
                }
    assert_equal expected, @enigma1.encrypt("Hello world", "02715")
  end

  def test_it_can_decrypt_with_key_and_todays_date
    expected = {decryption: "hello world",
                key: "02715",
                date: Date.today.strftime("%m%d%y")
                }
    assert_equal expected, @enigma1.decrypt("jib qdmctpu", "02715")
  end

  def test_it_can_encrypt_with_random_key_and_todays_date
    assert_equal 11, @enigma1.encrypt("Hello world")[:encryption].length
    assert_instance_of String, @enigma1.encrypt("Hello world")[:encryption]
    assert_equal 5, @enigma1.encrypt("Hello world")[:key].length
    assert_instance_of String, @enigma1.encrypt("Hello world")[:key]
    assert_equal 6, @enigma1.encrypt("Hello world")[:date].length
    assert_instance_of String, @enigma1.encrypt("Hello world")[:date]
  end
end
