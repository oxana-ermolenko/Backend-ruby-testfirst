#write your code here

def translate_one_word(str)
  vowels = ["a", "e", "i", "o", "u"]
  collecting_consonants = ""
  
  str.each_char do |i| 
  
    if !vowels.include?(str[i]) 
      collecting_consonants += str[i] 
    elsif str[i] == "u" and collecting_consonants[-1] == "q"
      collecting_consonants += str[i]
    else
      break
    end
  end
  start = collecting_consonants.length
  str[start..-1] + collecting_consonants + "ay"
end

def translate(sentence)
  words = sentence.downcase.split
  result = ""
  words.each do |word|
    result += translate_one_word(word) + " "
  end
  result.strip!
end

