class ApplyRule
    def spare(firstball, secondball, third_ball)
      if secondball.positive? && secondball + firstball == 10
          (third_ball + 10)
      else
          (firstball + secondball)
      end
    end
  
    # method strike
    def strike(third_ball, fourth_ball, fifth_ball)
      if third_ball == 10 && fifth_ball == 10
        30
      else
        (third_ball + fourth_ball + 10)
      end
    end
  end
  