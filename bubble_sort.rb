def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n - 1).times do |i|
      next unless array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array [i]
      swapped = true
    end
    break unless swapped
  end
  array
end

a = [9, 2, 14, 11, 101, 99, 87, 200, 128, 32, 12, 87]
p bubble_sort(a)

def bubble_sort_by(array2)
  (array2.length - 1).times do |i|
    array2[i], array2[i + 1] = array2[i + 1], array2[i] if yield(array2[i], array2[i + 1]).positive?
  end
  array2
end

new_array = bubble_sort_by(%w[hi hello hey ashjbas]) do |left, right|
  left.length - right.length
end

puts new_array

bubble_sort_by(%w[hi hello hey]) { |left, right| right <=> left }
