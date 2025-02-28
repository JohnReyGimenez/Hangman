require 'csv'

class Hangman
  def initialize
    @contents = File.read('google-10000-english-no-swears.txt ').split("\n")
  end

  def select_word
    valid_word = @contents.select {|word| word.size >= 5 && word.size <= 12}
    return valid_word.sample
  end

  def create_array(valid_word)
    size = valid_word.size
    array = Array.new(size, '_')
    return array
  end

  def display_board
    create_array(select_word)
    puts "word[] word[1] word[2] word[3] word[4] word[5] word[6] 
    word[7] word[8] word[9] word[10] word[11]"
  end

  def play_game
    loop

    end
  end

  def get_player_input
    puts 'Enter your guess'
  end
end

# randomly selects word
# get size of word and turn each character to element
# create array of "_" has same number of elements as word size
# player must input number for the position of the letter on the word
# and the letter then give feedback if its correct
# when the player inputs the letter it gets the position(index)
# and then uses that to turn the "_" array the element and replaces the same index 
# basically updating the other array