#write your code here
def echo(string)
  string   
end

def shout(string)
  string.upcase 
end

def repeat(string, count=2)
  ([string] * count).join(" ")  
end

def start_of_word(string, num)
  string[0, num]
end

def first_word(string)
  string.split.first
end

def titleize(string)
  little_words = %w[a an the and in of over]
        words = string.split.map.with_index do |word, index|
          if index == 0 || !little_words.include?(word)
            word.capitalize
          else
            word
          end
        end
  words.join(' ')
end
