#2021 Levi D. Smith (levidsmith.com)
extends Node

func _ready():
	var iDemo = 2
	
	if (iDemo == 0):
		get_node("DemoIntegerSort").setup()
	elif (iDemo == 1):
		get_node("DemoStringSort").setup()
	elif (iDemo == 2):
		get_node("DemoObjectSort").setup()
