#numbers = [ 1721,
#979,
#366,
#299,
#675,
#1456]

numbers = []

File.open("workspace.rb") do |out|
  IO.readlines("workspace.rb").each do |line|
    numbers << line.to_i
  end
end



i = 0
n = 0
loop do
   answers = numbers[i].to_i + numbers[n].to_i
  n += 1
  if i >= numbers.length
    break
  elsif n >= numbers.length
    n = 0
    i += 1
  end
  if answers == 2020
    puts numbers[i] * numbers[n - 1]
    break
  end
end
