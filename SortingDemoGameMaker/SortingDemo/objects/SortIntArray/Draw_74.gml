//2021 Levi D. Smith (levidsmith.com)
/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)

draw_text(20, 20, "unsorted")
for (i = 0; i < array_length(myArray); i += 1) {
	draw_text(20, (i + 3) * 20 , myArray[i])		
}

draw_text(120, 20, "sorted")
for (i = 0; i < array_length(myArraySorted); i += 1) {
	draw_text(120, (i + 3) * 20 , myArraySorted[i])		
}
