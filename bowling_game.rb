require_relative 'games.rb'
require_relative 'test_bowling_game.rb'
games = Games.new
opcion_menu = 0
bowling = []
while opcion_menu < 4
  print "¡welcome to the bowling game!\n"
  print "choose an option.\n"
  print"1.- Perfect game\n"
  print"2.- Game with 3 strikes\n"
  print"3.- Game example\n"
  print"4.- Exit game \n"
  opcion_menu = gets.chomp.to_i
  case opcion_menu
    when 0 
      print"Please try again.\n"
    when 1
      print"Perfect game\n"
      bowling = [10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 10, 10]
      print "#{bowling}\n"
      score = games.balls(bowling)
      print "#{score}\n"
    when 2
      print"Game with 3 strikes\n"
      bowling = [10, 0, 10, 0, 2, 5, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 10, 10]
      print "#{bowling}\n"
      score = games.balls(bowling)
      print "#{score}\n"
    when 3
      print"Game example\n"
      bowling = [1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 0, 1, 7, 3, 6, 4, 10, 0, 2, 8, 6]
      print "#{bowling}\n"
      score = games.balls(bowling)
      print "#{score}\n"
    when 4
      print "thanks for playing \n"
    when 5..10
      print "Option not valid. bye\n"    
  end
end