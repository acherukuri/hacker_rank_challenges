require 'matrix'

number = gets.to_i
matrix_hash = {}
i = 1
until i > number
  matrix_hash["array" + i.to_s ] = gets.split().map { |x| x.to_i }
  i += 1;
end
reverse = matrix_hash.values.map {|a| a.reverse}
value1 = Matrix.rows(matrix_hash.values).trace
value2 = Matrix.rows(reverse).trace

p (value1-value2).abs
