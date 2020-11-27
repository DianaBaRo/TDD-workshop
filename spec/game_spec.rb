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
        expect(player_1.score).to eq(0)
        expect(player_2.score).to eq(0)
     end
   end

   context 'when we have a winner' do
        it 'will show the results of the game with the name of the winner' do
            player_1.score = 4
            expect(subject.results). to eq(player_1)
        end
   end
end
