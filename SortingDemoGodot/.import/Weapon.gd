#2021 Levi D. Smith (levidsmith.com)
extends Node

var strName
var iCost
var iAttack

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func toString():
	var str1 = strName
	var str2 = str(iCost)
	var str3 = str(iAttack)
	
	
	return "{0},{1},{2}".format({0:str1, 1:str2, 2: str3})
