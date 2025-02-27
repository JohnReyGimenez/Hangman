require 'csv'

class Hangman
  def initialize
    contents = File.read('google-10000-english-no-swears.txt ').split("\n")
  end

  def select_word
    valid_word = contents.select {|word| word.size => 5 && word.size <= 12}
    valid_words.sample
  end
end