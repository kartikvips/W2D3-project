class Card 
  attr_reader :suit, :value, :color
  
  
  def initialize(suit, value)
    @suit = suit
    @value = value 
    @color = set_color
  end
  
  def set_color
    case suit
    when :spade, :club
      :black
    when :heart, :diamond
      :red
    end
  end
  
  def to_s
    "#{value.to_s.capitalize} of #{suit.capitalize}s"
  end
  
end