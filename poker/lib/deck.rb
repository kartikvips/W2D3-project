require_relative 'card.rb'

class Deck
  
  SUITS = [:heart, :diamond, :spade, :club]
  FACE_VALUE = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :K, :A]
  
  def self.make_deck
    deck = []
    SUITS.each do |suit|
      FACE_VALUE.each do |val|
        deck << Card.new(suit, val)
      end 
    end 
    Deck.new(deck)
  end 
  
  attr_reader :stack
  
  def initialize(stack = [])
    @stack = stack
  end 
  
  def shuffle
    @stack.shuffle!
    nil
  end 
  
  def inspect
    "Cheater no cheating."
  end 
  
  def draw
    @stack.pop
  end 
  
end 