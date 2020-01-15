require_relative './key_gen'
require_relative './date_gen'
require_relative './shift'
require_relative './encryption'
require_relative './decryption'
require_relative './enigma'

enigma = Enigma.new
message = File.open(ARGV[0], "r")
incoming_message = message.readlines.join
incoming_message
message.close

decryption = enigma.decrypt(incoming_message, ARGV[2], ARGV[3])
decrypt_message = File.open(ARGV[1], "w")
decrypt_message.write(decryption[:decryption])
decrypt_message.close

puts "Created '#{ARGV[1]}' with the key #{decryption[:key]} and date #{decryption[:date]}"
