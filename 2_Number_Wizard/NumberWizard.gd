extends Node


func _ready():
	# min and max are function names
	var minVal = 1
	var maxVal = 1000
	
	print("Welcome to Number Wizard")
	print("Pick a number between ", minVal, " and ", maxVal, ", don't tell me what it is ...")
	print("Tell me if your number is higher or lower than 500?")
	print("Push Up = Higher, Push Down = Lower, Push Enter = Correct")


func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		print("Up arrow key was pressed.")
	if Input.is_action_just_pressed("ui_down"):
		print("Down arrow key was pressed.")
	if Input.is_action_just_pressed("ui_accept"):
		print("Return key was pressed.")
