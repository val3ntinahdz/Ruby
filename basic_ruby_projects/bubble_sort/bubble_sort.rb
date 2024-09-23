def bubble_sort(arr)
  n = arr.length
  loop do
    swapped = false

    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    break if !swapped
  end

  arr
end

puts bubble_sort([5, 3, 8, 2, 1, 4]).inspect # [1, 2, 3, 4, 5, 8]
puts bubble_sort([10, 9, 8, 7, 6]).inspect   #  [6, 7, 8, 9, 10]
puts bubble_sort([1, 2, 3]).inspect           #  [1, 2, 3]
puts bubble_sort([]).inspect                   # []
puts bubble_sort([7]).inspect                  # [7]
