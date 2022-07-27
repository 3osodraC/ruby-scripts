def caesar_cipher(string, key)
  puts "string: '#{string}'\nkey: #{key} \n\n"

  # Array of letters from the original string, and another of its ascii values.
  str_arr = string.split('')
  ascii_arr = string.bytes

  str_arr.map.with_index do |char, i|
    # Encrypts characters, ensuring z -> a wrapping
    # and that only letters are encrypted.
    ascii_arr[i] = ((ascii_arr[i] - 65 + key) % 26) + 65 if /[[:upper:]]/.match(char)
    ascii_arr[i] = ((ascii_arr[i] - 97 + key) % 26) + 97 if /[[:lower:]]/.match(char)
  end

  # Transforms the encrypted ascii array into a string, prints, and returns.
  string = ascii_arr.pack('c*')
  puts "encrypted: '#{string}'"
  string
end

caesar_cipher('3osodraC on GitHub!', 3)
