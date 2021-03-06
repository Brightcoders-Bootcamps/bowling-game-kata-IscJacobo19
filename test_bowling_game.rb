require 'minitest/autorun'
require_relative 'games.rb'
# The test_process class is responsible for is to verify if it is taking the expected value of any request
class TestBowlingGame < Minitest::Test
  # the test_process metthod is responsible
  def test_process
    games = Games.new
    game_perfect = [10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 10, 10]
    game_spare = [10, 0, 10, 0, 2, 5, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 10, 10]
    game_normal = [1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 0, 1, 7, 3, 6, 4, 10, 0, 2, 8, 6]
    assert_equal [30, 60, 90, 120, 150, 180, 210, 240, 270, 300], games.balls(game_perfect)
    assert_equal [20, 37, 44, 74, 104, 134, 164, 194, 224, 254], games.balls(game_spare)
    assert_equal [5, 14, 29, 49, 60, 61, 77, 97, 117, 133], games.balls(game_normal)
  end
end
