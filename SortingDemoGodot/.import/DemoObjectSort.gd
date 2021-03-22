#2021 Levi D. Smith (levidsmith.com)
extends Node
var unsorted_label
var sorted_label
var myArray
var myArraySorted

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func setup():
	
	unsorted_label = get_node("/root/DemoManager/Control/UnsortedLabel")
	sorted_label = get_node("/root/DemoManager/Control/SortedLabel")

	createWeapons()
	sortWeapons()
	displayArrays()

func createWeapons():
	var weapon
	
	myArray = []
	
	#create the Weapon.tscn scene by making a new node, and then 
	#"Save Branch as Scene"
	var weaponScene = load("res://Weapon.tscn")
	
	weapon = weaponScene.instance()
	weapon.strName = "Club"
	weapon.iCost = 640
	weapon.iAttack = 24
	myArray.append(weapon)
	
	weapon = weaponScene.instance()
	weapon.strName = "Bamboo Pole"
	weapon.iCost = 100
	weapon.iAttack = 8
	myArray.append(weapon)

	weapon = weaponScene.instance()
	weapon.strName = "Hand Axe"
	weapon.iCost = 980
	weapon.iAttack = 15
	myArray.append(weapon)
	
	weapon = weaponScene.instance()
	weapon.strName = "Broad Sword"
	weapon.iCost = 150
	weapon.iAttack = 40
	myArray.append(weapon)

	weapon = weaponScene.instance()
	weapon.strName = "Flame Sword"
	weapon.iCost = 560
	weapon.iAttack = 35
	myArray.append(weapon)

	weapon = weaponScene.instance()
	weapon.strName = "Copper Sword"
	weapon.iCost = 180
	weapon.iAttack = 15
	myArray.append(weapon)
	
	
func sortWeapons():
	myArraySorted = myArray.duplicate()

	#myArraySorted.sort_custom(self, "sort_weapon_name")
	#myArraySorted.sort_custom(self, "sort_weapon_cost")
	myArraySorted.sort_custom(self, "sort_weapon_attack")
	
	
func sort_weapon_name(weapon1, weapon2):
	if (weapon1.strName.to_upper() < weapon2.strName.to_upper()):
		return true
	else:
		return false

func sort_weapon_cost(weapon1, weapon2):
	if (weapon1.iCost < weapon2.iCost):
		return true
	else:
		return false

func sort_weapon_attack(weapon1, weapon2):
	if (weapon1.iAttack < weapon2.iAttack):
		return true
	else:
		return false


func displayArrays():
	var strUnsorted = "Unsorted\n"
	for item in myArray:
		strUnsorted += item.toString() + "\n"
	unsorted_label.set_text(strUnsorted)

	var strSorted = "Sorted\n"
	for item in myArraySorted:
		strSorted += item.toString() + "\n"
	sorted_label.set_text(strSorted)
	#sorted_label.rect_position = Vector2(500, 0)
