def intro_menu
	puts " _____________________________________ "
	puts "|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|"
	puts "|     Welcome to Tower of Hanoi!      |"
	puts "|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|"
	puts "| Please choose one of the following: |"
	puts "|                                     |"
	puts "|(1) How to play?                     |"
	puts "|(2) Start new Game!                  |"
	puts "|                                     |"
	puts "|        *Enter only 1 or 2*          |"
	puts "|_____________________________________|"
end

def game_driver
	correct_input = false

	until correct_input
		intro_menu
		initial_user_input = gets.chomp

		if initial_user_input.to_i == 1
			game_instructions
			correct_input = true
		elsif initial_user_input.to_i == 2
			start_game
			correct_input = true
		else
			puts "Please input ONLY the numbers 1 or 2"
		end
	end 
end

def game_instructions
	puts " ______________________________________________________________ "
	puts "| Goal: To move all the disks from the leftmost peg to another |"
	puts "|       peg while adhering to the following 3 rules.           |"
	puts "|                                                              |"
	puts "| (1) You may only move one disk at a time.                    |"
	puts "| (2) A larger disk may not be placed on top of a smaller one. |"
	puts "| (3) All disks, except the one being moved, must be on a peg. |"
	puts "|                                                              |"
	puts "|          Press 'Q' to return to the Home screen              |"
	puts "|______________________________________________________________|"


	while true
		user_return = gets.chomp

		break if user_return.upcase == 'Q'
	end

	game_driver

end

def start_game
	puts "start" #testing purposes
end

game_driver #starts code