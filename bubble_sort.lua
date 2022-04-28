function make_arr()
  local out = {}
  for i=1,100 do
  out[i]=math.random(1000)
  end
  return out
end
x = make_arr()
local size = table.getn(x)
local temp = {}

for i= 1,size do
  for j= 1,size-i do
    if x[j]>x[j+1] then
      temp[0] = x[j+1]
      x[j+1] = x[j]
      x[j] = temp[0]
    end
  end
end

for i=1,100 do
  print(x[i])
end
