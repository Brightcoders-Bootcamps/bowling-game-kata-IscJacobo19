# rules class
class RulesGame
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
      strike(turn[2], turn[3], turn[4])
    elsif turn[1].positive? && turn[1] + turn[0] == 10
      turn[2] + 10
    else
      turn[0] + turn[1]
    end
  end

  # method strike
  def strike(third_ball, fourth_ball, fifth_ball)
    if third_ball == 10 && fifth_ball == 10
      30
    else
      third_ball + fourth_ball + 10
    end
  end
end
