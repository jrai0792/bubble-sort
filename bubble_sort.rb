def bubble_sort(array)
    len=array.length
    for i in (0...len-1)
        for j in (0...len-1) do
            if array[j] > array[j+1]
                array[j], array[j+1] = array[j+1], array[j]
            end
        end
    end
end
test = [89,4,2,7,9,4,0,3,-1]
bubble_sort(test)
p test