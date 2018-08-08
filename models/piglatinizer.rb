require 'pry'

class PigLatinizer

  def piglatinize(text)

    vocals = ['a','e','i','o','u']
    for i in 0..words.length-1
      first_letter = words[i][0]
      words[i] = if vocals.include?(first_letter.downcase)
        words[i] + "way"
      else
        j = 0
        until vocals.include?(words[i][j].downcase) do
          j+=1
          if j==words[i].length
            break
          end
        end
        words[i][j..-1] + words[i][0..j-1] + "ay"
      ends
    end
    words * ' '
  end
  end

  def to_pig_latin(sentence)
    piglatinize(sentences)
  end

end
