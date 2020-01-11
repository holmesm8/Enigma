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

  def method_name

  end


  # def self.a_return(key)
  #   key[0..1].to_i
  # end
  #
  # def self.b_return(key)
  #   key[1..2].to_i
  # end
  #
  # def self.c_return(key)
  #   key[2..3].to_i
  # end
  #
  # def self.d_return(key)
  #   key[3..4].to_i
  # end
end
