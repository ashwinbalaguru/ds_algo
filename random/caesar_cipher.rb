# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

def caesar_cipher(message, key, result = '')
  message.each_char do |char|
    code = char.ord + key

    if char.ord.between?(65, 90)
      cipher_code = code > 90 ? (code - 26).chr : code.chr
      result += cipher_code

    elsif char.ord.between?(97, 122)
      cipher_code = code > 122 ? (code - 26).chr : code.chr
      result += cipher_code

    else
      result += char
    end
  end
  result
end

puts 'Enter the message to cipher'
message = gets.chomp

puts 'Enter the shift'
key = gets.chomp.to_i

caesar_cipher(message, key, result = '')



# Another Great solution
# frozen_string_literal: true

class CaesarCipher
  def translate(message, shift, result = '')
    message.each_char do |char|
      base = char.ord < 91 ? 65 : 97
      # Modifies Lowercase & Uppercase
      if char.ord.between?(65, 90) || char.ord.between?(97, 122)
        rotation = (((char.ord - base) + shift) % 26) + base
        result += rotation.chr
      # Keeps spaces & punctuation
      else
        result += char
      end
    end
    result
  end
end