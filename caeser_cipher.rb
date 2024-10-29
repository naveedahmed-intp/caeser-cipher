def caesar_cipher(string, shift)
  shiftedString = ""
  string.each_char do |char|
    if char =~ /[a-zA-Z]/
      base = char.ord > 90? 'a'.ord : 'A'.ord
      shiftedCharacter = (base + (char.ord + shift - base)%26).chr
      shiftedString += shiftedCharacter
    else
      shiftedString += char
    end
  end
  puts shiftedString
end

message ="What a string!"

caesar_cipher(message, 5)