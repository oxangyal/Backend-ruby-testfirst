#write your code here
#
def translate_word(string)
  vowels = ["a", "e", "i", "o", "y", "u"]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  if vowels.include?(string[0].downcase)
    string + "ay"
  elsif consonants.include?(string[0].downcase)
    if string[0].downcase == "q" && string[1].downcase == "u"
      string = string[2, string.length] + string[0..1] + "ay"
    elsif consonants.include?(string[1].downcase)
      if string[1].downcase == "q" && string[2].downcase == "u"
        string = string[3, string.length] + string[0..2] + "ay"
      elsif consonants.include?(string[2].downcase)
        string = string[3, string.length] + string[0..2] + "ay"
      else
        string = string[2, string.length] + string[0..1] + "ay"
      end
    else
      string = string[1, string.length] + string[0] + "ay"
    end
  end
end

def translate(string)
  result = ""
  words = string.split(" ")
  for word in words
    result += translate_word(word) + " "
  end
  return result[0, result.length - 1]
end
