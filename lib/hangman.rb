require 'csv'

class Hangman
  def initialize
    @contents = File.read('google-10000-english-no-swears.txt ').split("\n")
    @secret_word = select_word
    @guessed_letters = Array.new(@secret_word.length, '_')
    @remaining_attempts = 6
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

  def display_board(guessed_letters, remaining_attempts)
    puts "Word: #{guessed_letters.join(' ')}"
    puts "Remaining attempts: #{remaining_attempts}"


    array = create_array(select_word)
    puts "#{array[0]} #{array[0]} #{array[0]} #{array[0]} #{array[0]}"
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

revised:

# Randomly select a word between 5 and 12 letters.
# Convert the word into an array of characters.
# Create another array of "_" with the same length as the word.
# Player guesses a letter.
# If the letter is in the word:
# . If the letter is incorrect:
#   - Track the mistake.
#   - Display remaining attempts.
# Repeat until:
#   - All letters are guessed (win condition).
#   - Maximum mistakes reached (lose condition).
