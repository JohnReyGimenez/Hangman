require 'csv'

class Hangman
  def initialize
    contents = File.read('google-10000-english-no-swears.txt ').split("\n")
    
  end

  def select_word
    valid_word = contents.select {|word| word.size >= 5 && word.size <= 12}
    valid_word.sample
  end

  def display_board
    word = valid_word.chars
    puts "word[0] word[1] word[2] word[3] word[4] word[5] word[6] 
    word[7] word[8] word[9] word[10] word[11]"
  end
end