p "welcome to blackjack!"

p "Start blackjack?(y/n)"

input = gets.chomp
if input == "n" then
    puts "shuuryou"
end

puts "kaisisimasu"
total = rand(1..13)
puts total

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
puts "anatanomakedesu"
else
puts total
end


