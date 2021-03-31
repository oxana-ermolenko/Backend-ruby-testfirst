class Book
# write your code here
attr_accessor :title

  def title
    downcase_list = ["The", "A", "An", "For", "And", "Nor", "But", "Or", "Yet", "So", "Above", "Across", "Against", "Along", "Among", "Around", "At", "Before", "Behind", "Below", "Beneath", "Beside", "Between", "By", "Down", "From", "In", "Into", "Near", "Of", "Off", "On", "To", "Toward", "Under", "Upon", "With", "Within"]
    array_of_words = @title.downcase.split

    result = ''
    array_of_words.each_with_index do |word, index|
      word = word.capitalize
      if downcase_list.include?(word) && index > 0
        word = word.downcase
      end
      result += word + " "
    end
    result.strip!
  end
end