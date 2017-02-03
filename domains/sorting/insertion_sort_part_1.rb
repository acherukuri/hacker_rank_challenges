def insertion_sort(ar)
  n = ar.length - 1
  insert_number = ar.last
  while n > 0 && (ar[n-1] > insert_number)
      ar[n] = ar[n-1]
      puts ar.join(' ')
      n -= 1
  end
  ar[n] = insert_number
  puts ar.join(' ')
end
count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}
insertion_sort(ar)
