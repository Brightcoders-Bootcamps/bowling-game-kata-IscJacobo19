require_relative 'apply_rule.rb'
# rules class
class RulesGame
  # rules game
  def self.game_rules(turn, counter_frame)
    if counter_frame < 9
      gamebowling(turn)require_relative 'games.rb'
      require_relative 'test_bowling_game.rb'
      games = Games.new
      opcion_menu = 0
      while opcion_menu < 4
        print "¡welcome to the bowling game!\n"
        print "choose an option.\n"
        print "1.- Perfect game\n"
        print "2.- Game with 3 strikes\n"
        print "3.- Game example\n"
        print "4.- Exit game \n"
        opcion_menu = gets.chomp.to_i
        case opcion_menu
        when 0
          print "Please try again.\n"
        when 1
          bowling = [10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 10, 10]
          score = games.balls(bowling)
        when 2
          bowling = [10, 0, 10, 0, 2, 5, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 10, 10]
          score = games.balls(bowling)
        when 3
          bowling = [1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 0, 1, 7, 3, 6, 4, 10, 0, 2, 8, 6]
          score = games.balls(bowling)
        when 4
          print "thanks for playing \n"
        end
        print "#{bowling}\n"
        print "#{score}\n"
      end
      
    else
      (turn[0] + turn[1] + turn[2])
    end
  end

  # Gamebowling
  def self.gamebowling(turn)
    rul = ApplyRule.new
    if turn[0] == 10
      rul.strike(turn[2], turn[3], turn[4])
    else
      rul.spare(turn[0],turn[1], turn[2])  
    end
  end
end
