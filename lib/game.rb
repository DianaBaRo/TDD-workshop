class Game
    attr_reader :player_1, :player_2

    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
    end

    def results 
        if @player_1.current_winner
            @player_1
        elsif @player_2.current_winner
            @player_2
        else
            "No winner"
        end
    end

    private

    def player_wins(player)
        player.wins_point
    end

end
