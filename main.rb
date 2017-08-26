p "welcome to blackjack!"

p "Start blackjack?(y/n)"

input = gets

puts input
total = rand(1..13)
puts total
hit = gets
if hit == "y" || hit == "yes"
total = total + rand(1..13)
end
puts total
