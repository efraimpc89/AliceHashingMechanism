require 'digest'

def encryptToSHA256(string)
  Digest::SHA256.hexdigest(string)
end
#-----------------------HASHING MECHANISM EXAMPLE------------------------------

exampleInput = 'admin,12345,999999'
encryptedString = encryptToSHA256(exampleInput)

puts "Alice Hashing Mechanism for 'admin,12345,999999' is:"
puts "#{encryptedString}"
puts "\n"


#---------------------ATTEMPTING TO FIND PASSWORD BY BRUTE FORCE----------------------------------
expectedHash = '69c0144fad2f52e2bacfb9ffbd73f39ba4c9b0abc55d4b759cb8b970ee4de82c'

puts 'Attempting to find password for the following given information:'

puts 'user - admin1'
puts 'salt - 888888'
puts "hash #{expectedHash}"

for tryPass in 1..99999 do
 attemptInput = "admin1,#{tryPass},888888"
 encryptedString = encryptToSHA256(attemptInput)

 if (encryptedString == expectedHash)
    puts "\nPASSWORD MATCH FOUND!"
    puts "Expected hash: #{expectedHash}"
    puts "Encrypted hash: #{encryptedString}"
    puts "The password is: #{tryPass}"
 end

end
