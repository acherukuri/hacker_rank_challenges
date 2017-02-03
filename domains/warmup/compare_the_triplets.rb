alice_scores_array = gets.strip.split(' ')
bob_scores_array = gets.strip.split(' ')
alice_score = 0
bob_score = 0
alice_scores_array.zip(bob_scores_array).map do |i|
  i.map!(&:to_i)
  if i[0] > i[1]
    alice_score += 1
  elsif i[0] < i[1]
    bob_score += 1
  end
end
puts [alice_score, bob_score].join(' ')
