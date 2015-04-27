array = [2,1,8,3,5,4,6,7,10,15,100,200,85,91,83,101,105,17]

def mergesort(array)  
  if array.size == 1
    return array 
  else
    # puts "The array size: #{array.size}"
    # puts "The array: #{array}"
    a, b = divide(array)
    merge(mergesort(a),mergesort(b))
  end
end
  
def divide(array)  
  mid = array.size/2
  left = array[0..(mid-1)]
  right = array[mid..array.size]
  # puts "value of left: #{left}"
 #  puts "value of right: #{right}"
  return [left, right]
end

def merge(a,b)
  if a == nil or b == nil
    return
  else

    output =[]
    i = 0
    j = 0
    
    # puts "a.size: #{a.size}"

   #  puts "b.size: #{b.size}"
   #  puts "----------------------"
    
    until i > a.size-1 and j > b.size-1
      if a[i].nil?
        output << b[j]
        j+=1
      elsif b[j].nil?
        output << a[i]
         i+=1
      elsif a[i] < b[j]
        # puts "value of a[i] #{a[i]} and i: #{i}"
 #        puts "value of b[j] #{b[j]} and j: #{j}"
        output << a[i]
        i+=1
      elsif a[i] > b[j]
        # puts "value of a[i] #{a[i]} and i: #{i}"
 #        puts "value of b[j] #{b[j]} and j: #{j}"
        output << b[j]
        j+=1
      end
    end
  output
  end
end


puts mergesort(array)
