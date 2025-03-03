module Hangman
  class Game
    def initialize
      @contents = File.read('google-10000-english-no-swears.txt ').split("\n")
      @secret_word = select_word
      @guessed_letters = Array.new(@secret_word.length, '_')
      @remaining_attempts = 6
      @incorrect_guesses = []
      @display = Display.new
      @save_load = SaveLoad.new
    end

    def play_game; end

    def player_input
      puts 'Enter a letter for your guess'
      input = gets.chomp.downcase

      until input.length == 1 && input >= 'a' && input <= 'z'
        puts 'Invalid input. Please enter a single letter'
        input = gets.chomp.downcase
      end

      input
    end
  end
end
