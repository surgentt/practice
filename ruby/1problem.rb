def multi
  sum = 0
  (0..999).each do  |num|
    if num % 5 == 0 || num % 3 == 0
      sum += num
    end
  end
  puts sum
end

multi
