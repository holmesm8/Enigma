class Decryption
  attr_reader :alphabet

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def shifted_message(message, key, date)
    shifty = Shift.shift_array(key, date)
    message.downcase.chars.map do |character|
      if !@alphabet.include?(character)
        character
      elsif character == " "
        shifty.rotate!
        " "
      else
        shifted_letter = @alphabet[(character.ord - 97 - shifty[0]) % 27]
        shifty.rotate!
        shifted_letter
      end
    end.join
  end
end
