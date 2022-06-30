require_relative '../hand'

RSpec.describe Hand do
  hand = Hand.new

  describe 'Given a hand' do
    describe 'with no other combination' do
      hands = [%w[10S 6H 5H AC QC], %w[QD 3S 9C 7D AS], %w[3C AD 9C 7D JH]]
      hands.each do |h|
        it 'should score High Card' do
          expect(hand.score h).to eq 'high card'
        end
      end
    end

    describe 'with two cards of the same value repeating' do
      hands = [%w[KS KC 7S 10H 3H], %w[2C 4C 9S AD 9H]]
      hands.each do |h|
        it 'should score as a Pair' do
          expect(hand.score h).to eq 'pair'
        end
      end
    end

    # describe 'with five cards of the same suite' do ...
  end

  describe 'Given two hands' do
    describe 'And One being a High Card' do
      player1 = %w[2C 4C KH 7D 9H]

      describe 'And Two being a Pair' do
        player2 = %w[5D 2D 2H AC 4C]

        it 'should return Pair wins' do
          expect(hand.compare player1, player2).to eq 'pair'
        end
      end

      describe 'And Two being a High Card' do # lets not consider how to solve ties
        player2 = %w[8S 4S KH 7D 9H]

        it 'should return Tie' do
          expect(hand.compare player1, player2).to eq 'tie'
        end
      end

      # describe 'And Two being a Flush' do ...
    end
  end
end