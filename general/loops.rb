# we have a while loop that works along side a break
# statement.
# we have a interger.times that shorten it tramendously.
# we have an original loop that also works with a break statement.


# this is a while loop
n = 2
count = 0
while count <= n do
  puts "I ran. while loop"
  count = count + 1 # this is the break statement
end

# this is using interger.times
3.times do
  puts "I ran. interger.times"
end

# this is an original loop
count = 0
n = 3
loop do
  break if count >= n #this break staement could be use with wile loops as well
  puts "I ran. original loop"
  count += 1
end