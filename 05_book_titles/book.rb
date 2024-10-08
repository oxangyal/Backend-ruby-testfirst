class Book

    # write your code here

    attr_accessor :title

    def title=(new_title)
        little_words = %w[a an the and in of over]
        words = new_title.split.map.with_index do |word, index|
          if index == 0 || !little_words.include?(word)
            word.capitalize
          else
            word
          end
        end
        
        @title = words.join(' ')
      end

end
