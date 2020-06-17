# The Games class is responsible for the entire game
class Games
  # The balls method, is that it reads the shots
  def balls(bowling)
    counter_frame = 0
    ball = 0
    frame = []
    score = 0
    while ball < 19
      turn = [bowling[ball], bowling[ball + 1], bowling[ball + 2], bowling[ball + 3], bowling[ball + 4]]
      total = game_rules(turn, counter_frame)
      score += total
      frame[counter_frame] = score
      counter_frame += 1
      ball += 2
    end
    frame
  end

  # rules game
  def game_rules(turn, counter_frame)
    if counter_frame < 9
      if turn[0] == 10
        strike_game(turn[2], turn[3], turn[4])
      elsif turn[1].positive? && turn[1] + turn[0] == 10
        spare_game(turn[2])
      else
        normal_game(turn[0], turn[1])
      end
    else
      last_game(turn[0], turn[1], turn[2])
    end
  end

  # Normal_game
  def normal_game(first_ball, second_ball)
    first_ball + second_ball
  end

  # Sapre_game
  def spare_game(third_ball)
    third_ball + 10
  end

  # Strike_game
  def strike_game(third_ball, fourth_ball, fifth_ball)
    if third_ball == 10 && fifth_ball == 10
      30
    else
      third_ball + fourth_ball + 10
    end
  end

  # last_game
  def last_game(first_ball, second_ball, third_ball)
    first_ball + second_ball + third_ball
  end
end
