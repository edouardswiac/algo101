## INSERTION SORT
## Edouard Swiac

input = 25.times.map { Random.rand(500) }

def sort(input)
  for index in 0...input.size
    insert(input, index, input[index])
  end
end

def insert(input, index, value)
  i = index - 1
  while i >= 0 and input[i] > value
    input[i + 1] = input[i]
    i = i - 1
  end
  input[i + 1] = value
end

puts "Insertion sort for the following input #{input}"
sort(input)
puts "Input sorted #{input}"