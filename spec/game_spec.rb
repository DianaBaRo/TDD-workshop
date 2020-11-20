require "./lib/Game.rb"

RSpec.describe Game do
   subject { Game.new("A", "B") }
    it "returns instance of a game" do
        expect(subject.class). to eq(Game)
        expect(subject.player_1).to eq("A")
    end
end