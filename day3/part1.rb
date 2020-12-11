data = File.read("data.txt").split
x = 0
y = 0
counter = 0
horizontal = data[0].length
vertical = data.length

#while y + 2 <= vertical do
#  x += 3
#  y += 1
#  p y
#  x -= horizontal if x >= horizontal
#
#  tree_check = data[y][x]
#  counter += 1 if tree_check == "#"
#
#end
#
#p counter



slopes = [[1, 1], [3, 1], [5, 1], [7, 1], [1, 2]]
i = 0
tree_total = []

5.times do
  x_offset = slopes[i][0]
  y_offset = slopes[i][1]
  x = 0
  y = 0
  counter = 0
  while y + 2 <= vertical do
    x += x_offset
    y += y_offset

    x -= horizontal if x >= horizontal

    tree_check = data[y][x]
    counter += 1 if tree_check == "#"
  end

  tree_total << counter
  tree_total
  i += 1
end
  p tree_total.inject(:*)
