class Player

  attr_accessor :score

  SCORE = [0, 15, 30, 40, 'DEUCE', 'ADVANTAGE']

  def initialize
    @score = 0
  end

  def wins_point
    @score += 1
    score_value
  end

  def score_value
    SCORE[@score]
  end

  def score
    score_value
  end

  def current_winner
    @score > 3 ? self : false
  end

end
