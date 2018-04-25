require 'rspec'
require 'deck'


describe Deck do 
  
  subject(:deck) {Deck.make_deck}
  
  describe "#initialize" do
    context "when default deck is called" do 
      it "has a stack with 52 Cards" do 
        expect(deck.stack.length).to eq(52)
      end 
      
    end
    
    describe "#shuffle" do 
      it "shuffles the deck" do 
        expect(deck.stack).to receive(:shuffle!)
        deck.shuffle 
       
      end 
    end  
      
    
    describe "#draw" do 
      it "takes one card off the top" do 
        expect(deck.stack).to receive(:pop)
        deck.draw
      end 
      
      it "returns a Card" do
        expect(deck.draw).to be_an_instance_of(Card)
      end 
    end 
  end  
  
  
  
  
  
  
  
end 