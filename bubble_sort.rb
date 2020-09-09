# bubble_sort method
def bubble_sort(array)
  len = array.length
  (0...len - 1).each do |i|
    (0...len - 1 - i).each do |j|
      array[j], array[j + 1] = array[j + 1], array[j] if array[j] > array[j + 1]
    end
  end
end

# bubble_sort_by method
def bubble_sort_by(array)
  len = array.length - 1
  swapped = true
  while swapped
    swapped = false
    (0..len - 1).each do |i|
      next unless yield(array[i], array[i + 1]).positive?

      swap = array[i + 1]
      array[i + 1] = array[i]
      array[i] = swap
      swapped = true
    end
    len -= 1
  end
  p array
end

# Running the above two methods below

test = [89, 4, 2, 7, 9, 4, 0, 3, -1]
bubble_sort(test)
p test

array_word = %w[hi hello hey hola game]
bubble_sort_by(array_word) do |left, right|
  left.length - right.length
end
