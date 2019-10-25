
def my_own_map(array)
  new = []
  i = 0
  while i < array.length
    new.push(yield(array[i]))
    i += 1
  end
  return new
end

def reduce(array, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = array[0]
    i = 1
  end
  while i < array.length
    accum = yield(accum, array[i])
    i += 1
  end
  accum
end
