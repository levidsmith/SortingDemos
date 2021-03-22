//2021 Levi D. Smith (levidsmith.com)
/// @description Insert description here
// You can write your code in this editor

myArray = array_create(0)
myArray[0] = "Orange"
myArray[1] = "Banana"
myArray[2] = "grapes"
myArray[3] = "WATERMELON"
myArray[4] = "LEMON"
myArray[5] = "apple"

myArraySorted = array_create(0)
array_copy(myArraySorted,0,myArray,0,array_length(myArray))
array_sort(myArraySorted, false)

case_insensitive_sort = function(str1, str2) {
	if (string_upper(str1) < string_upper(str2)) {
		return -1
	} else if (string_upper(str1) > string_upper(str2)) {
		return 1
	} else {
		return 0
	}

}

myArraySortedInsensitive = array_create(0)
array_copy(myArraySortedInsensitive,0,myArray,0,array_length(myArray))
array_sort(myArraySortedInsensitive, case_insensitive_sort)

