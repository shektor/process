class Scrabble

  LETTER_VALUES = {
    'a', 's' => 1,
    'f' => 4,
    't' => 1,
    'r' => 1,
    'e' => 1,
    'q' => 10,
    'u' => 1,
    'k' => 5,
    'y' => 4,
    'i' => 1,
  }

  # A, E, I, O, U, L, N, R, S, T	1
  # D, G	2
  # B, C, M, P	3
  # F, H, V, W, Y	4
  # K	5
  # J, X	8
  # Q, Z	10

  def score(word)
    return 0 if !word.is_a? String
    score = 0
    word.chars.each do |letter|
      score += LETTER_VALUES[letter]
    end
    score
  end
end
