pico-8 cartridge // http://www.pico-8.com
version 32
__lua__
function printtable(t)
		for v in all(t) do
  		print(v)
		end
end

function sort(t)
  for i=1, #t do
    local j = i
    while j > 1 and t[j-1] > t[j] do
      t[j],t[j-1] = t[j-1],t[j]
      j = j - 1
    end
  end
end

mytable = { 75, 59, 11, 35, 3, 
10, 2021 };

print 'unsorted'
printtable(mytable)
print ''

print 'sorted'
sort(mytable)
printtable(mytable)



__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
