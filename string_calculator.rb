class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers =  delimiters(numbers)
    negative_numbers(numbers, delimiter)
    numbers.split(/#{delimiter}/).map(&:to_i).sum
  end

  def negative_numbers(numbers,delimiter )
    nums = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(',')}" unless negatives.empty?
  end

  def delimiters(numbers)
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
    else
      delimiter, numbers = ",|\n", numbers
    end
  end
end
