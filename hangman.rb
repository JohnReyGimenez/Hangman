require 'csv'

class Hangman
  def initialize
    contents = File.read('google-10000-english-no-swears.txt ').split("\n")
  end

  def select_word
    contents.each do |word|
     if word.size => 5 && word.size <= 12
      return word
    end    
  end
end