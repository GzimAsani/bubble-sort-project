def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n - 1).times do |i|
      if array[i] > array[i + 1] 
        array[i], array[i + 1] = array[i + 1], array [i]
        swapped = true

      end
    end
    break unless swapped
  end
  array
end

a = [9, 2, 14, 11, 101, 99, 87, 200, 128, 32, 12, 87]
p bubble_sort(a)

def bubble_sort_by(arr)
  count = arr.length
  while count > 0 do
    n = 0
    while n < arr.length-1 do
      if block_given?
        result = yield(arr[n], arr[n+1])
        if result == -1 
          arr[n+1], arr[n] = arr[n], arr[n+1]
          count += arr.length 
        else
          count -= 1
        end
        n += 1 
      else 
        result = arr[n] > arr[n+1]
        if result 
          arr[n+1], arr[n] = arr[n], arr[n+1]
          count += arr.length 
        else
          count -= 1
        end
        n += 1  
      end
    end  
  end
  print arr
end

bubble_sort_by([55,75,345,56,7,8,3,4,7,8,2,9,4,12,3,5,9,3,1,5,676,34,23,8,12]) { |left,right| left <=> right}
bubble_sort_by(["hi","hello","hey"]) { |left,right| right <=> left}