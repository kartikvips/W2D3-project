class Array 
  
  def my_uniq
    results = []
    each {|el| results << el unless results.include?(el)}
    results
  end 
  
  def two_sum
    sums = []
    each_with_index do |el, i|
      (i+1...size).each do |i2|
        sums << [i, i2] if el + self[i2] == 0
      end
    end
    sums
  end
  
  def my_transpose
    results = Array.new(length) {Array.new}
    each_with_index do |row, idx|
      row.each_with_index do |el, idx2|
        results[idx2][idx] = self[idx][idx2]
      end 
    end 
    results
  end 
  
  def deep_dup
    map{|el| el.is_a?(Array) ? el.deep_dup : el}
  end 
  
end 

def stock_picker(prices)
  results = []
  profit = 0
  
  (0...prices.size - 1).each do |idx|
    (idx + 1...prices.size).each do |idx2|
      pairs_profit = prices[idx2] - prices[idx]
      if pairs_profit > profit
        profit = pairs_profit 
        results = [prices[idx], prices[idx2]]
      end
    end
  end
  
  results
end

class Towers 
  
  def initialize(pegs = [[3,2,1],[],[]])
    @pegs = pegs
  end 
  
  def pegs 
    @pegs.deep_dup
  end 
  
  def won?
    @pegs[1] == [3,2,1] || @pegs[2] == [3,2,1]
  end 
  
  def move(start_pos, end_pos)
    peg1 = @pegs[start_pos][-1]
    peg2 = @pegs[end_pos][-1]
    raise ArgumentError if peg1.nil?
    raise ArgumentError if !peg2.nil? && peg2 < peg1
    @pegs[end_pos].push(@pegs[start_pos].pop)
    
  end 
  
  def get_input
    print "Enter a move 'from, to' : "
    inp = gets.chomp
    inp.split(",").map(&:to_i)
  end 
  
  def render
    puts @pegs.to_s
  end 
  
  
end

if __FILE__ == $PROGRAM_NAME
  
  tower = Towers.new
  until tower.won?
    system "clear"
    tower.render
    begin 
      x,y = tower.get_input
      tower.move(x,y)
    rescue
      puts "Invalid move!"
      retry
    end 
  end 
  
  puts "You've won!"
    
end 









































#