# frozen_string_literal: true

dictionary = %w(below down go going horn how how howdy it i low own part partner sit)

def substrings(phrase, dictionary)
  array_of_string = phrase.downcase.split(/\W+/)

  result = dictionary.reduce(Hash.new(0)) do |acc, elem|
    array_of_string.each do |item|
      item == elem && acc[elem] += 1
    end

    acc
  end

  result
end

puts substrings('below dictionary', dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
