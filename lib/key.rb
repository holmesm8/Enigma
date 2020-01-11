class Key
  attr_reader :random_key

  def initialize
    @random_key = generate_random_key
  end

  def generate_random_key
    5.times.map {rand(0..9)}.join
  end
end
