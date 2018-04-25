require 'rspec'
require 'card'

RSpec.describe Card do
  subject(:card) {Card.new(:spade, :ace)}
  
  describe "#initialize" do
    it "sets the suit" do 
      expect(card.suit).to eq(:spade)
    end
    
    it "sets the facevalue" do 
      expect(card.value).to eq(:ace)
    end
    
    it "sets the color" do 
      expect(card.color).to eq(:black)
    end
  end
  
  describe "#to_s" do 
    it "returns string when puts'd" do 
      expect(card.to_s).to eq("Ace of Spades") 
    end
  end
  
end