require_relative 'save_game.rb'
# Classe games
class Games
  attr_reader :save
  def initialize
    @save = SaveGame.new
  end

  def balls(bowling)
    score = 0
    current_frame = 0
    0.step(19, 2) do |ball|
      turn = bowling[ball..(ball + 4)]
      score = save.save_score(turn, current_frame, score)
      current_frame += 1
    end
    save.total_scores
  end
end
