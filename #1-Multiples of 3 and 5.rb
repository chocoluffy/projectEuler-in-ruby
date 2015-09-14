# fail the #testcase 2 and 3 because these tests involve large numbers
# and when for large float number converted to integer, there will be a 
# huge rounding error!
# 
# solution: if we can use bitwise operation, like 18 >> 2 = 4, only if 
# we only involve division where divisor is 2;

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


