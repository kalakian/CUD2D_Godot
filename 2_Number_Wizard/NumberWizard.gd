extends Node

# min and max are function names
var minVal = 1
var maxVal = 1000
var guess = 500

func _ready():
	print("Welcome to Number Wizard")
	print("Pick a number between ", minVal, " and ", maxVal, ", don't tell me what it is ...")
	print("Tell me if your number is higher or lower than ", guess, "?")
	
	maxVal += 1 # this ensures the max value can be included in guesses


func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		minVal = guess
		guess = (minVal + maxVal) / 2
		print("Is it higher or lower than ", guess, "?")
	elif Input.is_action_just_pressed("ui_down"):
		maxVal = guess
		guess = (minVal + maxVal) / 2
		print("Is it higher or lower than ", guess, "?")
	elif Input.is_action_just_pressed("ui_accept"):
		print("I guessed correct :)")
