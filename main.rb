p "welcome to blackjack!"

p "Start blackjack?(y/n)"

input = gets.chomp
if input == "n" then
    puts "shuuryou"
end

puts "kaisisimasu"
total = rand(1..13)
total2 = rand(1..13)
puts "you are #{total}"
puts "Im #{total2}"

while total2 <= 21 do
    if total2 <= 18 then
         total2 += rand(1..13)
    else
         break
    end
end
while total <= 21 do
p "hit?(y/n)"
hit = gets.chomp
if hit == "y" then
    total += rand(1..13)
    puts total
elsif hit == "n"
    break
end
end
if total > 21 then
puts "bast!"
puts "Im #{total2}"
else
puts "you are #{total}"
puts "Im #{total2}"
end


