require_relative 'rules_game.rb'
# save game frame
class SaveGame
  attr_reader :frame
  def initialize
    @frame = []
  end

  # save score
  def save_score(turn, counter_frame, score)
    total = RulesGame.game_rules(turn, counter_frame)
    score += total
    frame[counter_frame] = score
  end

  def total_scores
    frame
  end
end
