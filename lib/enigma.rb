require_relative './key_gen'
require_relative './date_gen'
require_relative './shift'
require_relative './encryption'
require_relative './decryption'

class Enigma
  def initialize
    @keygen = KeyGen.generate_random_key
    @dategen = DateGen.current_date
    @encryption = Encryption.new
    @decryption = Decryption.new
  end

  def encrypt(message, key = @keygen, date = @dategen)
    {encryption: @encryption.shift_message(message, key, date),
                key: key,
                date: date
                }
  end
end
