require "./lib/Game.rb"

RSpec.describe Game do
   subject { Game.new("A", "B") }

   context 'when we initiaLize a game' do
     it "returns instance of a game" do
        expect(subject.class). to eq(Game)
        expect(subject.player_1).to eq("A")
        expect(subject.score_P1).to eq(0)
        expect(subject.score_P2).to eq(0)
     end
   end

   context 'when a player wins a point' do
       it 'reflects in the players points' do
        subject.player_wins("A")
           expect(subject.score_P1).to eq(15)
       end
   end
end
