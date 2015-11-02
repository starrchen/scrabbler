class ScrabbleWord

  def initialize word
    @word = word.downcase
    @score = score
  end

  def word
    @word
  end


  def score
    # convert word to array of characters
    # loop through each letter - get value of letter
    # return total values
    letter_values = {
      a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10
    }
    sum = 0
      @word.split("").each do |letter|
        sum += letter_values[letter.to_sym]
      end
    @score = sum
  end

  def multiplier_score num
    @score * num
  end


end
