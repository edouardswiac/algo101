## INSERTION SORT
## Edouard Swiac

module InsertionSort
  def self.sort(input)
    for index in 0...input.size
      self.insert(input, index, input[index])
    end
  end
  
  private
  def self.insert(input, index, value)
    i = index - 1
    while i >= 0 and input[i] > value
      input[i + 1] = input[i]
      i = i - 1
    end
    input[i + 1] = value
  end
end

input = 25.times.map { Random.rand(500) }
puts "Insertion sort for the following input #{input}"
InsertionSort.sort(input)
puts "Input sorted #{input}"