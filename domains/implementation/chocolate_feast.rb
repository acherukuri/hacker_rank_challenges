#!/bin/ruby
gets.strip.to_i.times do
    n, c, m = gets.strip.split(' ').map(&:to_i)
    number_of_chocs = (n/c).floor
    number_of_wrappers_he_got = number_of_chocs
    while m <= number_of_wrappers_he_got
        number_of_chocs_he_can_get_with_wrappers = (number_of_wrappers_he_got/m).floor
        number_of_wrappers_he_got -= (number_of_chocs_he_can_get_with_wrappers * m)
        number_of_chocs += number_of_chocs_he_can_get_with_wrappers
        number_of_wrappers_he_got += number_of_chocs_he_can_get_with_wrappers
    end
    puts number_of_chocs
end
