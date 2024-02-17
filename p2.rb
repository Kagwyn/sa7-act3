puts "Welcome to the Adventure Game!\nYou have 0 points.\n"

room_scores = {'1' => 5, '2' => 10, '3' => 15}
total = 0

while true
    print "Choose a room (1-3) to enter or 'exit' to end the game: "
    selection = gets.chomp

    if selection == "exit"
        break

    elsif room_scores.key?(selection)
        total += room_scores[selection]
        puts "You entered room #{selection} and earned #{room_scores[selection]} points.\n\n"
        
    else
        puts "#{selection} is not a valid selection."
    end
end

puts "Game over! You collected a total of #{total} points."