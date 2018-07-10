extends Node

# min and max are function names
var minVal = 1
var maxVal = 1000
var guess = 500

func _ready():
	
	print("Welcome to Number Wizard")
	print("Pick a number between ", minVal, " and ", maxVal, ", don't tell me what it is ...")
	print("Tell me if your number is higher or lower than ", guess, "?")
	print("Push Up = Higher, Push Down = Lower, Push Enter = Correct")


func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		print("Up arrow key was pressed.")
		minVal = guess
		print(guess)
	elif Input.is_action_just_pressed("ui_down"):
		print("Down arrow key was pressed.")
		maxVal = guess
		print(guess)
	elif Input.is_action_just_pressed("ui_accept"):
		print("Return key was pressed.")
