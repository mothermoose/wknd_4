# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

arr_1[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]

def find_start(arr_1,arr_2)
  counter = 0
  arr_1.each do |elm|
    if elm == arr_2[0]
      return counter
    end 
    counter + 1
  end 
end   

def find_missing
  offest = find_start(arr_1,arr_2) 
  index = 0
  arr_1.each do |letter|
    if letter != arr_2(index + offset)
      return(arr_2(index + offset))
      index += 1
    end 
    nil 
  end 



# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end
