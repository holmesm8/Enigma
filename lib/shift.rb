require './lib/key_gen'
require './lib/date_gen'

class Shift

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

  
end
