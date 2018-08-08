require 'pry'

class PigLatinizer

  def piglatinize(string)
    string = string.split('')
    if string.first.downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && string[1].downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && string[2].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
      first = string.shift
      second = string.shift
      third = string.shift
      "#{string.join}#{first}#{second}#{third}ay"
      # binding.pry
    elsif string.first.downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && string[1].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
      first = string.shift
      second = string.shift
      "#{string.join}#{first}#{second}ay"
      # binding.pry
    elsif string.first.downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
      first = string.shift
      "#{string.join}#{first}ay"
      # binding.pry
    elsif string.first.downcase.match(/[aeoui]/)
      "#{string.join}way"
      # binding.pry
    else
      string.join
      # binding.pry
    end
  end

  def to_pig_latin(sentence)
    sentence.split(' ').map do |value|
      self.piglatinize(value)
    end.join(' ')
  end

end
