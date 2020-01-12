require './lib/shift'

class Encryption
  attr_reader :letters_array

  def initialize
    @letters_array = ("a".."z").to_a << " "
  end

  def message_array(message)
    mess_array = message.split("")
  end


  # def shift_thing(message, key, date)
  #   shifty_hash = Shift.shift_hash(key, date)
  #   message_array = message.split("")
  #   require "pry"; binding.pry
    # return shifty_hash[:a] if index % 4 == 0
    # return shifty_hash[:b] if index % 4 == 1
    # return shifty_hash[:c] if index % 4 == 2
    # return shifty_hash[:d] if index % 4 == 3
  # end
end
