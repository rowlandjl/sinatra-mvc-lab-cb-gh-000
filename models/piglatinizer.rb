require 'pry'

class PigLatinizer

  def piglatinize(str)
    str = str.split(' ')
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(str[0])
    str + 'way'
    elsif consonants.include?(str[0]) && consonants.include?(str[1])
    str[2..-1] + str[0..1] + 'way'
    elsif consonants.include?(str[0])
    str[1..-1] + str[0] + 'way'
    else
    str # return unchanged
    end
  end

  def to_pig_latin(sentence)
    piglatinize(sentence)
  end

end
