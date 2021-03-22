//2021 Levi D. Smith (levidsmith.com)
/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)

draw_text(20, 320, "unsorted")
for (i = 0; i < array_length(myArray); i += 1) {
	draw_text(20, (i + 3) * 20 + 300 , myArray[i].strName + "," + string(myArray[i].iCost) + ", " +  + string(myArray[i].iAttack))		
}

draw_text(220, 320, "sorted by cost")
for (i = 0; i < array_length(myArraySorted1); i += 1) {
	draw_text(220, (i + 3) * 20 + 300 , myArraySorted1[i].strName + "," + string(myArraySorted1[i].iCost) + ", " +  + string(myArraySorted1[i].iAttack))		
}

draw_text(420, 320, "sorted by attack")
for (i = 0; i < array_length(myArraySorted2); i += 1) {
	draw_text(420, (i + 3) * 20 + 300 , myArraySorted2[i].strName + "," + string(myArraySorted2[i].iCost) + ", " +  + string(myArraySorted2[i].iAttack))		
}


