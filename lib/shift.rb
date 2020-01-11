require './lib/key_gen'
require './lib/date_gen'

class Shift

  def self.a_return(key)
    key[0..1].to_i
  end

  def self.b_return(key)
    key[1..2].to_i
  end

  def self.c_return(key)
    key[2..3].to_i
  end

  def self.d_return(key)
    key[3..4].to_i
  end

  def self.create_offset(date)
    date_squared = date.to_i ** 2
    date_squared.to_s[-4..-1].to_i
  end



end
