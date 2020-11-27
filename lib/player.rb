class Player

  attr_accessor :points

  SCORE = [0, 15, 30, 40, 'DEUCE', 'ADVANTAGE']

  def initialize
    @points = 0
  end

  def wins_point
    @points += 1
    score_value
  end

  def score
    score_value
  end

  def current_winner
    @points > 3 ? self : false
  end

  private

  def score_value
    SCORE[@points]
  end

end
