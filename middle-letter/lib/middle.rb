class Middle
  def get_middle(word)
    if word.length.odd?
      word.chars[word.length/2]
    else
      word.chars[(word.length/2) - 1] + word.chars[word.length/2]
    end
  end
end
