# frozen_string_literal: true

module Hangman
  class SaveLoad
    def save_game(game_state, filename = 'hangman_save.dat')
      File.open(filename, 'wb') do |file| # Opens file in write-binary
        file.write(Marshal.dump(game_state)) # serializes and write game state
      end
      puts 'Game saved.'
    end

    def load_game(filename = 'hangman_save.dat')
      if File.exist?(filename)

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
