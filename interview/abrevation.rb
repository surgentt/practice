def abrevation?(word, abr)
  abr_arr = []
  abr.each_char do |let|
    abr_arr << let
  end
  
  i = 0
  acheck = 0
  bcheck = abr.length
  word.each_char do |let|
    if let == abr[i]
      acheck += 1
      i += 1
    end
  end

  acheck == bcheck ? "true" : "false"
end

abrevation?("fatory", "fct")