require "./lib/game.rb"
require "./lib/player.rb"

RSpec.describe Game do
   subject { Game.new(player_1, player_2) }

   let(:player_1) { Player.new }
   let(:player_2) { Player.new }

   context 'when we initiaLize a game' do
     it "returns instance of a game" do
        expect(subject.class). to eq(Game)
        expect(subject.player_1).to eq(player_1)
        expect(player_1.points).to eq(0)
        expect(player_2.points).to eq(0)
     end
   end

   context 'when we have a winner' do
        it 'will show the results of the game with the name of the winner' do
            player_1.points = 4
            expect(subject.results).to eq(player_1)
        end
   end

   context 'when deuce' do
      before do
        3.times do
          player_1.wins_point
          player_2.wins_point
        end
      end

      it 'checks if a game is deuce' do
        expect(subject.results).to eq('Deuce')
      end
   end

   context 'when advantage' do

      it 'shows the advantage' do
        4.times do
          player_1.wins_point
        end

        3.times do
          player_2.wins_point
        end
      
        expect(subject.results).to eq(player_1)
      end

      it 'player_1 wins if player win a point from advantage' do
        3.times do
          player_1.wins_point
          player_2.wins_point
        end
        2.times { player_1.wins_point }

        expect(subject.results).to eq(player_1)
      end

      it 'player_2 wins if player win a point from advantage' do
        3.times do
          player_1.wins_point
          player_2.wins_point
        end
        2.times { player_2.wins_point }

        expect(subject.results).to eq(player_2)
      end

      it 'gives a score of Deuce if player_1 loses its advantage' do
        4.times do
          player_1.wins_point
          player_2.wins_point
        end

        expect(subject.results).to eq('Deuce')
      end

      it 'gives a score of Deuce if player_2 loses its advantage' do
        4.times do
          player_1.wins_point
          player_2.wins_point
        end

        expect(subject.results).to eq('Deuce')
      end

   end
end
