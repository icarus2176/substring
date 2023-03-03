def substrings(text, dictionary)
  result = Hash.new(0)

  dictionary.each do |word|
    down_text = text.downcase

    while down_text.include?(word)
      result[word] += 1
      down_text.sub!(word, "")
    end
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)