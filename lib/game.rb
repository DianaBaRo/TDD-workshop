class Game
    attr_reader :player_1, :player_2

    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
    end

    def results 
        return 'Deuce' if deuce?
        return output_winner if winner?
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

end
