card_number = "5541801923795240"

array2 = []
array3 = []
array4 = []

card_number.chars
array_card_number = card_number.chars
array_card_number.each do |number|
  number.to_i
  array2 << number.to_i
end
print array2
#name arrays better and more descriptive
array2.each.with_index do |digit, index|
  if index.even?
    digit = digit*2
    array3 << digit
  else index.odd?
    array3 << digit
  end
end
print array3

array3.each.with_index do |number|
  if number > 9
    number = number - 9
    array4 << number
  else
    array4 << number
  end
end
print array4
print array4.sum

if array4.sum % 10 == 0
  print "The number is valid"
else
  print "The number is invalid"
end
