# frozen_string_literal: true

module Hangman
  class SaveLoad
    def save_game(game_state, filename = 'hangman_save.dat')
      file.open(filename, 'wb') do |file| # Opens file in write-binary
        file.write(Marsha.dump(game_state)) # serializes and write game state
      end
      puts 'Game saved.'
    end
  end
end
