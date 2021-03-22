//2021 Levi D. Smith (levidsmith.com)
/// @description Insert description here
// You can write your code in this editor

myArray = array_create(0)
myArray[0] = 75
myArray[1] = 59
myArray[2] = 11
myArray[3] = 35
myArray[4] = 3
myArray[5] = 10
myArray[6] = 2021

myArraySorted = array_create(0)

array_copy(myArraySorted,0,myArray,0,array_length(myArray))

array_sort(myArraySorted, true)


