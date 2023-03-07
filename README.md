# Alice Hashing Mechanism 

A small ruby program that Alice has built in order to do a password hashing mechanism. 
It applies SHA-256 function to a string of the form “username,password,salt”,  where salt is a randomly chosen value.

username “admin” and password “12345” and salt “999999” is

    exampleInput = 'admin,12345,999999'
    puts encryptToSHA256(exampleInput)    
    
    output:
    fd90879194e44f9285a77ee4a282d9d22763cc2277a1d5ea8ead24ac8b2dbb5f


## Challenge

Attempt to look for the missing password given the following data:

    user: admin1
    password: ???
    salt: 888888
    hash: 69c0144fad2f52e2bacfb9ffbd73f39ba4c9b0abc55d4b759cb8b970ee4de82c

_Hint: It is is an integer_

## How to Run

1. Make sure you have [Ruby](https://www.ruby-lang.org) installed (you can verify by running 'ruby -v' in console)
2. Download [bruteForceAliceHashing.rb](https://github.com/efraimpc89/AliceHashingMechanism/blob/main/bruteForceAliceHashing.rb)
3. Open command line
4. Navigate to the folder that contains the downloaded file
5. run the following command:

    
    ruby bruteForceAliceHashing.rb 