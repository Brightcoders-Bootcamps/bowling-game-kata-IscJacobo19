require_relative 'rules_game.rb'
# Classe games
class Games
  # The balls method, is that it reads the shots
  def balls(bowling)
    frame = []
    counter_frame = 0
    ball = 0
    score = 0
    while ball < 19
      turn = [bowling[ball], bowling[ball + 1], bowling[ball + 2], bowling[ball + 3], bowling[ball + 4]]
      score = frame[counter_frame] = save_score(turn, counter_frame, score)
      counter_frame += 1
      ball += 2 end
    frame
  end

  # save score
  def save_score(turn, counter_frame, score)
    rules = RulesGame.new
    total = rules.game_rules(turn, counter_frame)
    score + total
  end
end
