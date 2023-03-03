def substrings(text, dictionary)
  result = Hash.new(0)
  down_text = text.downcase

  dictionary.each do |word|
    match = down_text.scan(word).length
    if match > 0
      result[word] = match
    end
    end
    result
  end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)