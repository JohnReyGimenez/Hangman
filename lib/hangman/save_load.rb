# frozen_string_literal: true

module Hangman
  class SaveLoad
    def save_game(game_state, filename = 'hangman_save.dat')
      file.open(filename, 'wb') do |file| # Opens file in write-binary
        file.write(Marsha.dump(game_state)) # serializes and write game state
      end
      puts 'Game saved.'
    end

    def load_game(filename = 'hangman_save.dat')
      if file.exist?(filename)

        File.open(filename, 'rb') do |file| # opens file in read binary
          Marshal.load(file.read)
        end
      else
        puts 'No saved game found.'
        nil
      end
    end
  end
end
