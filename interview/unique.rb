def find_first_unique(arr)

  hash = {}
  arr.each do |e|
    hash.has_key?(e) ? hash[e] += 1 : hash[e] = 1
  end
  p hash

  hash.each do |key, value|
    if value == 1
      p key
      break
    end
  end

end

find_first_unique([4,5,7,4,5,6])