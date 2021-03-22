//2021 Levi D. Smith (levidsmith.com)
/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)

draw_text(220, 20, "unsorted")
for (i = 0; i < array_length(myArray); i += 1) {
	draw_text(220, (i + 3) * 20 , myArray[i])		
}

draw_text(320, 20, "sorted")
for (i = 0; i < array_length(myArraySorted); i += 1) {
	draw_text(320, (i + 3) * 20 , myArraySorted[i])		
}

draw_text(420, 20, "sorted insensitive")
for (i = 0; i < array_length(myArraySortedInsensitive); i += 1) {
	draw_text(420, (i + 3) * 20 , myArraySortedInsensitive[i])		
}

