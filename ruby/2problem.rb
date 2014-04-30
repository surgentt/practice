class Fibon

  attr_reader :max

  def initialize(max)
    @max = max
    solve
  end

  def solve
    arr = []
    curr_num = 1
    last_num = 0
    while curr_num < max
      next_num = last_num + curr_num
      arr << next_num
      last_num = curr_num
      curr_num = next_num
    end
    
    sum = 0
    arr.each do |num|
      if num % 2 == 0
        sum += num 
      end
    end
    puts sum
  end

end

fib  = Fibon.new(4000000)