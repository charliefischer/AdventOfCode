data = File.read("data.txt").split

counter = 0

#data.each_with_index { |r, i|
#  if i % 3 == 0
#    min_val = r.split("-")[0].to_i
#    max_val = r.split("-")[1].to_i
#    letter = data[i + 1][0]
#    letter_count = data[i + 2].count(letter)
#    if letter_count >= min_val &&  letter_count <= max_val
#      counter += 1
#    end
#  end
#}
#
#puts counter

data.each_with_index { |r, i|
  if i % 3 == 0
    min_val = r.split("-")[0].to_i
    max_val = r.split("-")[1].to_i
    letter = data[i + 1][0]
    password = data[i + 2]
    if password[min_val - 1] == letter && password[max_val - 1] != letter
      counter += 1
    elsif password[max_val - 1] == letter && password[min_val - 1] != letter
    counter += 1
    end
  end
}

puts counter

#seperate the lines of the input file

#for each line, work out the necessary letter and the minimum and max times it can be used

#check whetehr the given password matches the min and max criteria

#count the number of passwords that are valid and invalid 
