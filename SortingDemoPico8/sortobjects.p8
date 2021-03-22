pico-8 cartridge // http://www.pico-8.com
version 32
__lua__
function printtable(t)
		for v in all(t) do
  		print(v.name .. ',' ..
  		      v.cost .. ',' ..
  		      v.attack)
		end
end

function sort(t)
  for i=1, #t do
    local j = i
    while j > 1 and 
      t[j-1].attack > t[j].attack do
      t[j],t[j-1] = t[j-1],t[j]
      j = j - 1
    end
  end
end

mytable = { };

weapon = { name = 'club',
  cost = 640, attack = 24 }
add(mytable, weapon)
weapon = { name = 'bamboo pole',
  cost = 100, attack = 8 }
add(mytable, weapon)
weapon = { name = 'hand axe',
  cost = 980, attack = 15 }
add(mytable, weapon)
weapon = { name = 'broad sword',
  cost = 150, attack = 40 }
add(mytable, weapon)
weapon = { name = 'flame sword',
  cost = 560, attack = 35 }
add(mytable, weapon)
weapon = { name = 'copper sword',
  cost = 180, attack = 15 }
add(mytable, weapon)





print 'unsorted'
printtable(mytable)
print ''

print 'sorted by attack'
sort(mytable)
printtable(mytable)



__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000