def convert_case(str)
  words = str.split(/[-_]/)
  
  first_word = words.shift
  
  first_word = first_word.downcase
  first_word.capitalize! if str[0] == str[0].upcase
  
  capitalized_words = words.map(&:capitalize)
  
  result = ([first_word] + capitalized_words).join(' ')
  
  result
end

puts convert_case("the-stealth-warrior")
puts convert_case("The_Stealth_Warrior")
puts convert_case("The_Stealth-Warrior")
