extends Node

# min and max are function names
var minVal
var maxVal
var guess

func _ready():
	start_game()


func start_game():
	minVal = 1
	maxVal = 1000
	guess = 500

	print("Welcome to Number Wizard")
	print("Pick a number between ", minVal, " and ", maxVal, ", don't tell me what it is ...")
	print("Tell me if your number is higher or lower than ", guess, "?")
	
	maxVal += 1 # this ensures the max value can be included in guesses


func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		minVal = guess
		next_guess()
	elif Input.is_action_just_pressed("ui_down"):
		maxVal = guess
		next_guess()
	elif Input.is_action_just_pressed("ui_accept"):
		print("I guessed correct :)")
		start_game()


func next_guess():
	guess = (minVal + maxVal) / 2
	print("Is it higher or lower than ", guess, "?")
