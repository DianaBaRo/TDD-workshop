class Game
    attr_reader :player_1, :player_2, :score_P1, :score_P2

    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
        @score_P1 = 0
        @score_P2 = 0
    end

    def player_wins(player)
        if player == @player_1
            @score_P1 += 15
        else
            @score_P2 += 15
        end
    end

end
