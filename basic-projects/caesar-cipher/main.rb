# frozen_string_literal: true

def caesar_cipher(phrase, shift)
  min_small_ord = 'a'.ord - 1
  max_small_ord = 'z'.ord
  min_big_ord = 'A'.ord - 1
  max_big_ord = 'Z'.ord

  arr_of_chars = phrase.split('')

  # Shift small chars
  shift_chars(arr_of_chars, min_small_ord, max_small_ord, shift)
  # Shift capital chars
  shift_chars(arr_of_chars, min_big_ord, max_big_ord, shift)

  # Make sure we format the result the same way as initial phrase
  formatted_result = arr_of_chars.join('').split('!').join(' ')

  formatted_result
end

def shift_chars(arr_of_chars, min_ord, max_ord, shift)
  arr_of_chars.map! do |char|
    char_ord = char.ord

    if char.ord.between?(min_ord, max_ord)
      # Make sure the shifted char doesn't exceed the max_ord value
      if char.ord < max_ord - shift
        char_ord = char.ord + shift
      # Start from the first char - 'a'
      else
        difference = max_ord - char.ord
        char_ord = min_ord + difference + shift
      end
    end

    char_ord.chr
  end
end

puts caesar_cipher('Hello world', 2)
puts caesar_cipher('abc', 1)
