def substrings(string, dictionary)
  string.downcase!
  hash = Hash.new(0)
  string_arr = string.split(' ')

  # checks each dictionary item and each word in the string for matches,
  # if it matches, adds 1 to its respective place in the hash.
  dictionary.each do |item|
    string_arr.each do |word|
      word.match?(item) ? hash[item] += 1 : false
    end
  end

  hash
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
