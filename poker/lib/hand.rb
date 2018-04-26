
class Hand 
  attr_reader :view
  
  def initialize
    @view = []
  end
  
  def add_card(card)
    @view << card unless @view.length == 5
    nil
  end
  
  def delete_card(card)
    @view.delete(card)
    nil
  end
  
  def to_s
    @view.to_s
  end
  
  def inspect
    
  end
  
end