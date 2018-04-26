require 'rspec'
require 'hand'

RSpec.describe Hand do 
  subject(:hand) { Hand.new }
  let(:card) { double("card", suit: :spade, val: :ace) }
  let(:card2) {double("card", suit: :heart, val: :king)}
  describe "#initialize" do 
    it "creates an empty array to hold a hand of cards" do 
      expect(hand.view).to eq([])
    end
  end
  
  describe "#add_card" do 
    it "adds a card to the hand" do
      hand.add_card(card)
      expect(hand.view).to include(card)
    end
    
    it "does not allow adding more than 5 cards" do 
      7.times{hand.add_card(card)}
      expect(hand.view.length).to eq(5)
    end
  end
  
  describe "#delete_card" do 
    before(:each) {
      hand.add_card(card)
      hand.add_card(card2)
    }
    
    it "removes the correct card from the hand" do 
      hand.delete_card(card2)
      expect(hand.view).to eq([card])
    end
  end
end