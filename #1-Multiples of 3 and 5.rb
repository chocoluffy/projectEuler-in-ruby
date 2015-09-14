def sum_all_multiples_ab(a, b, max)
  sum = sum_all_multiples(a, max)
  sum += sum_all_multiples(b, max)
  sum -= sum_all_multiples(a*b, max)
  sum
end

def sum_all_multiples(n,max)
  count = (max-1)/n
  last = count * n
    sum = ((n + last) / 2.to_f) * count
  sum
end

number_of_tests = gets.to_i
number_of_tests.times do
    p sum_all_multiples_ab(3, 5, gets.to_i).to_i
end

