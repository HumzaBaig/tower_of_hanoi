def intro_menu
	puts "\n"
	puts " _____________________________________ "
	puts "|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|"
	puts "|     Welcome to Tower of Hanoi!      |"
	puts "|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|"
	puts "| Please choose one of the following: |"
	puts "|                                     |\n"
	puts "|(1) Instructions                     |"
	puts "|(2) Start new Game!                  |"
	puts "|                                     |"
	puts "|        *Enter only 1 or 2*          |"
	puts "|_____________________________________|"
	puts "\n"
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
			correct_input = false
		end
	end 
end

def game_instructions
	puts "instructions" #testing purposes
end

def start_game
	puts "start" #testing purposes
end

game_driver #starts code