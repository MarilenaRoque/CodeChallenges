def funWithAnagrams(text)
    sorted_text = text.map{|el| el.chars.sort.join}
    unique_sorted = sorted_text.uniq
    word = '';
    sorted_text.each_with_index do |el, i|
        if el != unique_sorted[i]
            word = el
            break
        end
    end
    word = word.empty? ? "no anagram presence" : text[sorted_text.find_index(word)]
    return word
end
puts funWithAnagrams(["lot", "thingno", "nothin", "mari", 'imar'])