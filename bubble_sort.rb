array = [4,3,78,2,0,2]
array_2 = [5]
def bubble_sort(array)
    return array if array.size <= 1
    sort = true 
    while sort do
        sort = false
            (array.size - 1).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                sort = true
            end
        end
    end
  #puts array.length
  puts array.inspect
end

bubble_sort(array)