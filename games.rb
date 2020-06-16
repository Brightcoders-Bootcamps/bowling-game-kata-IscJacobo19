class Games 
  def balls(bowling)
    counter_frame = 0
    ball = 0
    frame = []
    score = 0
    while ball < 19
      total = game_rules(bowling[ball], bowling[ball + 1], bowling[ball + 2], bowling[ball + 3], bowling[ball + 4], counter_frame)
      score += total
      frame[counter_frame] = score
      counter_frame += 1
      ball += 2
    end
    return frame
  end

  def game_rules(first_ball, second_ball, third_ball, fourth_ball, fifth_ball, counter_frame)
    if counter_frame < 9
      if first_ball == 10
        total = strike_game(third_ball, fourth_ball, fifth_ball)
      elsif second_ball > 0 && second_ball + first_ball == 10
        total = spare_game(third_ball)
      else
        total = normal_game(first_ball, second_ball)
      end
    else
      total = last_game(first_ball, second_ball, third_ball)
    end
    return total
  end

  def normal_game(first_ball, second_ball)
    puts
    return first_ball + second_ball
  end

  def spare_game(third_ball)
    return third_ball + 10
  end

  def strike_game(third_ball, fourth_ball, fifth_ball)
    if third_ball == 10 && fifth_ball == 10
      strike = 30
    else
      strike = third_ball + fourth_ball + 10
    end
    return strike
  end

  def last_game(first_ball, second_ball, third_ball)
    return first_ball + second_ball + third_ball
  end
end
