# frozen_string_literal: true

def bubble_sort(array)
  array.length.times do
    array.each_with_index do |item, index|
      next unless array[index + 1]

      if item > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
  end

  array
end

puts bubble_sort([4, 3, 78, 2, 0, 2])
