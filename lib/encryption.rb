require './lib/shift'

class Encryption
  attr_reader :alphabet

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end


  def shift_message(message, key, date)

  end

  # def alphabet_index_pairs
  #   @alphabet.map.with_index(0).to_a
  # end
  #
  # def shift_values(key, date)
  #   Shift.shift_hash(key, date)
  # end
  #
  # def shifted_alphabet
  #   testy2 = alphabet_index_pairs.map do |letter, index|
  #     require "pry"; binding.pry
  #      testy = shift_values[index % 4]
  #      (testy + number) % 27
  #   end
  #   require "pry"; binding.pry
  # end
  #
  # def message_array(message, key, date)
  #   # message.split("")
  # end
  #
  # def message_shift(message, key, date)
  #   shift = Shift.shift_array(key, date)
  #   message.downcase.chars.map do |test|
  #   end
  # end

end
  # def shift_thing(message, key, date)
  #   shifty_hash = Shift.shift_hash(key, date)
  #   message_array = message.split("")
  # end
