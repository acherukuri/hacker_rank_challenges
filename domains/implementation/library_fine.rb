actual_date = gets.split().map {|i| i.to_i}
expected_date = gets.split().map {|i| i.to_i}

if actual_date[2] > expected_date[2]
  p (actual_date[2]-expected_date[2]) * 10000
elsif actual_date[1] > expected_date[1] && actual_date[2] >= expected_date[2]
  p (actual_date[1]-expected_date[1]) * 500
elsif actual_date[0] > expected_date[0] && actual_date[1] >= expected_date[1] && actual_date[2] >= expected_date[2]
  p (actual_date[0]-expected_date[0]) * 15
else
  p 0
end
