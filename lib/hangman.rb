# frozen_string_literal: true

require 'csv'

class Hangman
  def initialize
    @contents = File.read('google-10000-english-no-swears.txt ').split("\n")
    @secret_word = select_word
    @guessed_letters = Array.new(@secret_word.length, '_')
    @remaining_attempts = 6
    @incorrect_guesses = []
  end

  def select_word
    valid_word = @contents.select { |word| word.size >= 5 && word.size <= 12 }
    valid_word.sample
  end

  def display_board(guessed_letters, remaining_attempts)
    puts "Word: #{guessed_letters.join(' ')}"
    puts "Incorrect guesses: #{@incorrect_guesses.join(', ')}" unless @incorrect_guesses.empty?

    puts "Remaining attempts: #{remaining_attempts}"
    display_hangman
  end

  def display_hangman
    case @remaining_attempts
    when 6
      puts <<~HANGMAN
          _______
          |     |
          |
          |
          |
          |
          |
        __|__
      HANGMAN
    when 5
      puts <<~HANGMAN
          _______
          |     |
          |     ○
          |
          |
          |
          |
        __|__
      HANGMAN
    when 4
      puts <<~HANGMAN
          _______
          |     |
          |     ○
          |     |
          |
          |
          |
        __|__
      HANGMAN
    when 3
      puts <<~HANGMAN
          _______
          |     |
          |     ○
          |    ⎺|⎺
          |
          |
          |
        __|__
      HANGMAN
    when 2
      puts <<~HANGMAN
          _______
          |     |
          |     ○
          |    ⎺|⎺
          |    ╱
          |
          |
        __|__
      HANGMAN
    when 1
      puts <<~HANGMAN
          _______
          |     |
          |     ○
          |    ⎺|⎺
          |    ╱ ╲
          |
          |
        __|__
      HANGMAN
    when 0
      puts <<~HANGMAN
          _______
          |     |
          |     ○
          |    ⎺|⎺
          |    ╱ ╲
          |
          |
        __|__
      HANGMAN
    end
  end

  def play_game
  end

  def get_player_input
    puts 'Enter a letter for your guess'
    input = gets.chomp.downcase

    until input.length == 1 && input >= 'a' && input <= 'z'
      puts 'Invalid input. Please enter a single letter'
      input = gets.chomp.downcase
    end

    input
  end
end

# revised:

# Randomly select a word between 5 and 12 letters.
# Convert the word into an array of characters.
# Create another array of "_" with the same length as the word.
# Player guesses a letter.
# If the letter is in the word:
#   - the "_" array then gets updated if the guess is correct
#   - Display remaining attempts.
# If the letter is incorrect:
#   - Track the mistake.
#   - Display remaining attempts.
# Repeat until:
#   - All letters are guessed (win condition).
#   - Maximum mistakes reached (lose condition).

# board:
# lets say the word is 6 letters
#  _ _ _ _ _ _
# Remaining attempts: #{remaining_attempts}
#              _______
#              ○     |
#             ⎺|⎺    |
#             ╱ ╲    |
#                    |
#                    |
#                    |
