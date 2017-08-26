
def generate_card
   rand(13) + 1
end

def generate_mine
   cards = 0
   while cards < 18 do
      cards += generate_card
   end
   cards
end

def total_num(cards)
   total = 0
   cards.each do |card|
     total += card
   end
   total
end

def check_winner(yours, mine)
   if yours > 21 then
      puts("you lose!!")
   elsif mine > 21 then
      puts("you win!!")
   elsif (yours - mine) < 0 then
      puts("you lose!!")
   end
end

def main
   puts("welcome to black jack!!")
   print("your first card is ")
   cards = []
   cards.push(generate_card)
   puts(cards[0])
   print("Are you continue? [Y/n]")
   while str = STDIN.gets do
      break if str.chomp == "n"
      cards.push(generate_card)
      print("your cards are ")
      puts(cards)
      print("Are you continue? [Y/n]")
   end

   print("your total is ")
   yours = total_num(cards)
   puts(yours)
   print("My total is ")
   mine = generate_mine
   puts(mine)
   check_winner(yours, mine)
end

main()
