def translate(phrase)
    # Diviser la phrase en mots
    words = phrase.split(" ")
  
    # Traduire chaque mot
    translated_words = words.map do |word|
      # Si le mot commence par une voyelle
      if word[0].match(/[aeiouAEIOU]/)
        word + "ay"
      # Si le mot commence par 'sch'
      elsif word.start_with?("sch") || word.start_with?("Sch")
        word[3..-1] + "schay"
      # Si le mot commence par 'qu'
      elsif word.start_with?("qu") || word.start_with?("Qu")
        word[2..-1] + "quay"
      # Sinon, on déplace les consonnes au début du mot
      else
        # Trouver la première voyelle
        first_vowel_index = word.index(/[aeiouAEIOU]/)
        if first_vowel_index
          word[first_vowel_index..-1] + word[0...first_vowel_index] + "ay"
        else
          word + "ay"
        end
      end
    end
  
    # Rejoindre les mots traduits pour faire une phrase
    translated_words.join(" ")
  end