def gameOfThrones(s)
    b_hash = Hash.new
    array = s.split('')
    evens = 0;
    odds = 0;
    array.each_with_index do |el, index|
        if b_hash[el]
            b_hash[el] += 1
        else
            b_hash[el] = 1
        end
    end
    puts b_hash
    b_hash.each do |key, value|
        odds +=1 if value.odd?
    end
    result = odds < 2 ? 'YES' : 'NO'
  end