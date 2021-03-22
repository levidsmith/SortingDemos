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

	sortIntegers()
	displayArrays()

func sortIntegers():
	myArray = [75, 59, 11, 35, 3, 10, 2021]
	
	myArraySorted = myArray.duplicate()
	myArraySorted.sort()
	

func displayArrays():
	var strUnsorted = "Unsorted\n"
	for item in myArray:
		strUnsorted += str(item) + "\n"
	unsorted_label.set_text(strUnsorted)

	var strSorted = "Sorted\n"
	for item in myArraySorted:
		strSorted += str(item) + "\n"
	sorted_label.set_text(strSorted)
