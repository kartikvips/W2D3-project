require 'rspec'
require 'tdd'

RSpec.describe Array do 
    describe "#my_uniq" do
      
        let(:arr) {[1,2,1,3,3]}
       
        it "removes duplicates in an array" do 
            expect(arr.my_uniq).to eq([1,2,3])
        end 
        
        it "doesn't call #uniq" do 
          expect(arr).to_not receive(:uniq)
          arr.my_uniq
        end 
    end 
    
    describe "#two_sum" do
      let(:arr) {[-1, 0, 2, -2, 1]}
      
      it "returns nested array of indices that sum to zero" do 
        expect(arr.two_sum).to eq([[0, 4], [2, 3]])
      end
    end
    
    describe "#my_transpose" do 
      let(:arr) {[
                  [0, 1, 2],
                  [3, 4, 5],
                  [6, 7, 8]
                ]}
      let(:arr_t) {[
                  [0, 3, 6],
                  [1, 4, 7],
                  [2, 5, 8]
                ]}          
      
      it "transposes an array" do 
        expect(arr.my_transpose).to eq(arr_t)
      end 
      
      it "does not use #transpose" do 
        expect(arr).to_not receive(:transpose)
        arr.my_transpose
      end 
    end 
    
end 

RSpec.describe "#stock_picker" do
  it "finds the most profitable combo" do 
    expect(stock_picker([7, 6, 5, 10, 1])).to eq([5, 10])
  end
end

RSpec.describe Towers do 
  
  subject(:tower) {Towers.new}
  
  
  describe "#initialize" do 
    
    it "has an array of length 3" do 
      expect(tower.pegs.length).to eq(3) 
    end 
    
    it "has a tower on the first peg" do 
      expect(tower.pegs[0]).to eq([3,2,1])
    end 
    
  end   
  
  describe "#won?" do
    let(:tower1) {Towers.new([[], [3,2,1], []])}
    let(:tower2) {Towers.new([[], [], [3,2,1]])}

    it "returns true if game over" do 
      expect(tower1.won?).to be true
      expect(tower2.won?).to be true
    end 
    
    it "returns false if game is not over" do 
      expect(tower.won?).to be false
    end 
    
    
  end
  
  describe "#move" do 
    it "allows properly pops and pushes donuts" do 
      tower.move(0,1)
      expect(tower.pegs[0]).to eq([3,2])
      expect(tower.pegs[1]).to eq([1])
    end 
    
    it "does not allow larger donuts to be placed on smaller donuts" do 
      tower.move(0,1)
      expect {tower.move(0,1)}.to raise_error(ArgumentError)
    end 
    
    it "can't move if there's nothing in the starting position" do 
      expect {tower.move(1,2)}.to raise_error(ArgumentError)
    end 
    
  end 
  
  
  
end 

































#
















#