# bubble_sort method
def bubble_sort(array)
    len=array.length
    for i in (0...len-1)
        for j in (0...len-1-i) do
            if array[j] > array[j+1]
                array[j], array[j+1] = array[j+1], array[j]
            end
        end
    end
end


#bubble_sort_by method
def bubble_sort_by(array)
    len = array.length - 1
    swapped = true
    while swapped do
        swapped = false
        (0..len-1).each do |i|
            if yield(array[i], array[i+1]) > 0
                swap = array[i+1]
                array[i+1] = array[i]
                array[i] = swap
                swapped = true
            end
        end
        len -= 1
    end
    p array
end

test = [89,4,2,7,9,4,0,3,-1]
bubble_sort(test)
p test

array_word = ["hi","hello","hey","hat","hig","hi","h","cat","JackJill","joy"]
bubble_sort_by(array_word) do |left, right|
    left.length - right.length
end