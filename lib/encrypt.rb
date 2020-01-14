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

encryption = enigma.encrypt(incoming_message.chomp)
encrypt_message = File.open(ARGV[1], "w")
encrypt_message.write(encryption[:encryption])
encrypt_message.close

puts "Created '#{ARGV[1]}' with the key #{encryption[:key]} and date #{encryption[:date]}"
