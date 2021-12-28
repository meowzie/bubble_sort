require "pry-byebug"

def bubble_sort(numbers)
  mutable_numbers = Array.new(1) { numbers }.flatten
  final_index = numbers.length - 1
  counter = 0
  number = 0
  0.upto(numbers.length-1) do |index|
    number = index
    previous = Array.new(1) { numbers }.flatten
    chosen = numbers[index]
    checked = numbers[index+1]
    if index < final_index && chosen > checked
      numbers[index] = checked
      numbers[index+1] = chosen
    end
    if numbers == previous
      counter += 1
    else
      counter = 0
    end
  end
  if number == final_index && counter <= final_index
    bubble_sort(numbers)
  end
  numbers
end

p bubble_sort([4,3,78,2,0,2])