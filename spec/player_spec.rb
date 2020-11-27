require "./lib/player.rb"

RSpec.describe Player do
    subject { Player.new }

    context 'when we initiaLize a player' do
        it { is_expected.to have_attributes(points: 0) }
    end

    context 'when a player wins a point' do
        it 'reflects in the players points' do
         subject.wins_point
         expect(subject.score).to eq(15)
        end
    end
end