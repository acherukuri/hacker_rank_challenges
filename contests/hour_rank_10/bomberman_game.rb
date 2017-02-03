require 'matrix'
# TODO: need to fix the logic
rows, columns, seconds = gets.strip.split(' ').map(&:to_i)
grid_array = []
rows.times do
  grid_array << gets.strip.split(' ')
end
grid_matrix = Matrix.rows(grid_array)
bomb_indexes = []
grid_matrix.each_with_index do |element, row, column|
  bomb_indexes << [row, column] if element == '0'
end
