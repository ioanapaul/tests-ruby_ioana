def translate(word)
  words = word.split(" ")
  vowels = ["a", "e", "i", "o", "u"]

  translated_words = words.map do |w|
    if vowels.include?(w[0]) # commence par une voyelle
      w + "ay"
    else
      qu_index = w.index("qu")
      if qu_index == 0
        w[2..] + "quay" # "quiet" → "ietquay"
      elsif qu_index
        w[(qu_index + 2)..] + w[0...qu_index] + "quay" # "square" → "uaresquay"
      else
        consonants = w[/\A[^aeiou]+/]
        w[consonants.length..] + consonants + "ay"
      end
    end
  end

  translated_words.join(" ")
end
