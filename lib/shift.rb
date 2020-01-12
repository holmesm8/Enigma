require './lib/key_gen'
require './lib/date_gen'

class Shift

  def self.key_array(key)
    keys = key.chars.each_cons(2).map {|pair| pair.join}
    keys.map {|num| num.to_i}
  end

  def self.offset_array(date)
    date_squared = date.to_i ** 2
    offset = (date_squared.to_s[-4..-1]).split("")
    offset.map {|num| num.to_i}
  end

  def self.shift_array(key, date)
    keys = key_array(key)
    offsets = offset_array(date)
    key_offset = keys.zip(offsets)
    key_offset.map {|pair| pair.sum}
  end

  def self.shift_hash(key, date)
    shift_array = shift_array(key, date)
    shifter = {a: shift_array[0],
               b: shift_array[1],
               c: shift_array[2],
               d: shift_array[3]}
  end
end
