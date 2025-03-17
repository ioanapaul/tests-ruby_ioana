# Repet the word
def echo(word)
    word
  end
  
  # Put the word in uppercase
  def shout(word)
    word.upcase
  end
  
  # Repet a word few times
  def repeat(word, times = 2)
    ([word] * times).join(" ")
  end
  
  # Extract the first letters of a word
  def start_of_word(word, num)
    word[0...num]
  end
  
  # Find the firs word of a sentence
  def first_word(sentence)
    sentence.split.first
  end
  
  # Titleize a sentence
  def titleize(sentence)
    little_words = %w[and the over]  # Liste des "petits mots"
    words = sentence.split.each_with_index.map do |word, index|
      # Capitaliser tous les mots au début de la phrase, même les petits mots
      if index == 0 || !little_words.include?(word.downcase)
        word.capitalize
      else
        word.downcase  # Mettre en minuscule les petits mots sauf au début
      end
    end
    words.join(" ")
  end
  
  
  
  
  