class KeyGen
  def self.generate_random_key
    5.times.map {rand(0..9)}.join
  end
end
