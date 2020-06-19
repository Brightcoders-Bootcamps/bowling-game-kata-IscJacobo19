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
    total = game_rules(turn, counter_frame)
    score + total
  end

  # rules game
  def game_rules(turn, counter_frame)
    if counter_frame < 9
      gamebowling(turn)
    else
      (turn[0] + turn[1] + turn[2])
    end
  end

  # Gamebowling
  def gamebowling(turn)
    if turn[0] == 10
      if turn[2] == 10 && turn[4] == 10
        30 else turn[2] + turn[3] + 10
      end
    elsif turn[1].positive? && turn[1] + turn[0] == 10
      turn[2] + 10
    else
      turn[0] + turn[1]
    end
  end
end