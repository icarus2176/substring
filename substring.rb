def substrings(text, dictionary)
  dictionary.reduce(Hash.new(0)) do |word, times_appeared|
    changed_text = text.downcase
    until changed_text.include?(word.downcase) == false
      times_appeared++
      changed_text = changed_text[changed_text.index(word) + word.length]
    end
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)