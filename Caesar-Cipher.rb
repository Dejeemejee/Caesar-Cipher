def caesar_cipher(string, shift_factor)
#Creates two empty string; one for the encrypted caesar's code and the latter for manipulation within the code
  encrypted_str = ""
  new_str = ""

# iterates through each character in the provided string and assigns each character to "str"
  string.each_char do |str|
   # checks if the character is an alphabet
     if ( /[A-Za-z]/.match?(str)) 
      # checks if the character is an uppercase letter
         if (str.upcase == str)
            # assigns the ascii value of the character to the "new_str variable"
            new_str = str.ord
            new_str -= "A".ord
            new_str += shift_factor
            new_str %= 26
            new_str += "A".ord
            new_str = new_str.chr
            # appends the new character to the "encrypted_str"
            encrypted_str += new_str
         else
            new_str = str.ord
            new_str -= "a".ord
            new_str += shift_factor
            new_str %= 26
            new_str += "a".ord
            new_str = new_str.chr
            # appends the new character to the "encrypted_str"
            encrypted_str += new_str
         end
     else
      #for a non-alphabetic character, the character is appended to the "encrypted_str" variable immediately
         encrypted_str += str
     end
  end
  # the caesar's cipher is then returned
  puts encrypted_str
end


caesar_cipher("What a string!", 5)