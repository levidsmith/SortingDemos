#2021 Levi D. Smith (levidsmith.com)
extends Node

var unsorted_label
var sorted_label
var sorted_insensitive_label
var myArray
var myArraySorted
var myArraySortedInsensitive

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func setup():
	
	unsorted_label = get_node("/root/DemoManager/Control/UnsortedLabel")
	sorted_label = get_node("/root/DemoManager/Control/SortedLabel")
	sorted_insensitive_label = get_node("/root/DemoManager/Control/SortedInsensitiveLabel")

	sortStrings()
	displayArrays()

	
func sortStrings():
	myArray = ["Orange", "Banana", "grapes", "WATERMELON", "LEMON", "apple"]
	
	myArraySorted = myArray.duplicate()
	myArraySorted.sort()
	
	myArraySortedInsensitive = myArray.duplicate()
	myArraySortedInsensitive.sort_custom(self, "sort_insensitive")
	
func sort_insensitive(str1, str2):
	if (str1.to_upper() < str2.to_upper()):
		return true
	else:
		return false

func displayArrays():
	var strUnsorted = "Unsorted\n"
	for item in myArray:
		strUnsorted += str(item) + "\n"
	unsorted_label.set_text(strUnsorted)

	var strSorted = "Sorted\n"
	for item in myArraySorted:
		strSorted += str(item) + "\n"
	sorted_label.set_text(strSorted)

	var strSortedInsensitive = "Sorted Insensitive\n"
	for item in myArraySortedInsensitive:
		strSortedInsensitive += str(item) + "\n"
	sorted_insensitive_label.set_text(strSortedInsensitive)
