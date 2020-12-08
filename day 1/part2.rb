#numbers = [ 1721,
#979,
#366,
#299,
#675,
#1456]

numbers = []

input_data = File.read("workspace.rb").split
input_data.map { |x| numbers << x.to_i }

i = 0

while i < numbers.length do
  j = i + 1
  while true do
    if numbers[j] == nil
      break
    end
    x = j + 1
    while true do
      if numbers[x] == nil
        break
      end
      if numbers[i].to_i + numbers[j].to_i + numbers[x].to_i == 2020
        puts numbers[i].to_i * numbers[j].to_i * numbers[x].to_i
      end
      x += 1
    end
    j += 1
  end
  i += 1
end
  

