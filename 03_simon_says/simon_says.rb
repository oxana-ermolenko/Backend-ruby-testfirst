#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num = 2)
  Array.new(num, word).join(' ')
end

def start_of_word(word, num)
  word.slice(0, num)
end

def first_word(string)
  string.partition(" ").first
end

def titleize(sentence)
  stop_words = ["a", "an", "and", "the", "or", "over", "for", "of", "nor"]
  sentence.split.each_with_index.map{|word, index| stop_words.include?(word) && index>0 ? word: word.capitalize}.join(" ")
end
