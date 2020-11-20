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

   context 'when a player wins a point' do
       it 'reflects in the players points' do
        subject.player_wins(player_1)
        expect(player_1.score).to eq(15)
        subject.player_wins(player_1)
        expect(player_1.score).to eq(30)
        subject.player_wins(player_1)
        expect(player_1.score).to eq(40)
       end
   end


end
