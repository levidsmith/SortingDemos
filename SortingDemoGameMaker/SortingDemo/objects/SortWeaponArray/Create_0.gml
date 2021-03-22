//2021 Levi D. Smith (levidsmith.com)
/// @description Insert description here
// You can write your code in this editor

myArray = array_create(0)

weapon = instance_create_layer(0,0,0,Weapon)
weapon.strName = "Club"
weapon.iCost = 640
weapon.iAttack = 24
myArray[0] = weapon

weapon = instance_create_layer(0,0,0,Weapon)
weapon.strName = "Bamboo Pole"
weapon.iCost = 100
weapon.iAttack = 8
myArray[1] = weapon

weapon = instance_create_layer(0,0,0,Weapon)
weapon.strName = "Hand Axe"
weapon.iCost = 980
weapon.iAttack = 15
myArray[2] = weapon

weapon = instance_create_layer(0,0,0,Weapon)
weapon.strName = "Board Sword"
weapon.iCost = 150
weapon.iAttack = 40
myArray[3] = weapon

weapon = instance_create_layer(0,0,0,Weapon)
weapon.strName = "Flame Sword"
weapon.iCost = 560
weapon.iAttack = 35
myArray[4] = weapon

weapon = instance_create_layer(0,0,0,Weapon)
weapon.strName = "Copper Sword"
weapon.iCost = 180
weapon.iAttack = 15
myArray[5] = weapon



myArraySorted1 = array_create(0)
array_copy(myArraySorted1,0,myArray,0,array_length(myArray))

weapon_cost_sort = function(weapon1, weapon2) {
	if (weapon1.iCost < weapon2.iCost) {
		return -1
	} else if (weapon1.iCost > weapon2.iCost) {
		return 1
	} else {
		return 0
	}

}

array_sort(myArraySorted1, weapon_cost_sort)


myArraySorted2 = array_create(0)
array_copy(myArraySorted2,0,myArray,0,array_length(myArray))

weapon_attack_sort = function(weapon1, weapon2) {
	if (weapon1.iAttack < weapon2.iAttack) {
		return -1
	} else if (weapon1.iAttack > weapon2.iAttack) {
		return 1
	} else {
		return 0
	}

}

array_sort(myArraySorted2, weapon_attack_sort)
