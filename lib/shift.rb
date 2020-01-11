require './lib/key_gen'
require './lib/date_gen'

class Shift

  @offset = 0

  def a_return(key)
    key[0..1].to_i
  end

  def b_return(key)
    key[1..2].to_i
  end

  def c_return(key)
    key[2..3].to_i
  end

  def d_return(key)
    key[3..4].to_i
  end

  def create_offset(date)
    date_squared = date.to_i ** 2
    @offset = date_squared.to_s[-4..-1].to_i
  end


end
