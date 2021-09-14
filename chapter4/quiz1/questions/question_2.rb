# Write a program that adds together all the ODD integers from `1` to
# `250` (inclusive) and `puts`es the total.

i = 1
total = 0

while i < 251 do
  if i % 2 == 1
  		total += i
  end 
  i += 1
end

puts total