class Game
    attr_reader :player_1, :player_2

    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
    end

    def results 
        return 'Deuce' if deuce? || @player_1.points == @player_2.points
        return output_winner if winner?
        return output_advantage if advantage?
    end

    private

    def deuce?
        @player_1.points == 3 && @player_2.points == 3
    end

    def player_wins(player)
        player.wins_point
    end

    def output_winner
        if @player_1.current_winner
            @player_1
        elsif @player_2.current_winner
            @player_2
        else
            "No winner yet"
        end
    end

    def winner?
        @player_1.current_winner || @player_2.current_winner
    end

    def output_advantage
        @player_1 == 4 ? player_1 : player_2
    end

    def advantage?
        @player_1.points.between?(3, 4) && @player_2.points.between?(3, 4)
    end

end
