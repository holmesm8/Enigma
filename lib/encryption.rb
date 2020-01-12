require './lib/shift'

class Encryption

  def initialize
  @letters_array = ("a".."z").to_a << " "
  end

  def shift_hash(key, date)
    shift_array = Shift.shift_array(key, date)
    shifter = {a: shift_array[0],
               b: shift_array[1],
               c: shift_array[2],
               d: shift_array[3]}
               require "pry"; binding.pry
  end





end
