require "./lib/Game.rb"

RSpec.describe Game do
   subject { Game.new("A", "B") }
    it "returns instance of a game" do
        expect(subject.class). to eq(Game)
        expect(subject.player_1).to eq("A")
    end

   context 'When the game starts' do
     it 'both players should have 0 points' do
       expect(subject.score_P1).to eq(0)
       expect(subject.score_P2).to eq(0)
     end
   end
end
