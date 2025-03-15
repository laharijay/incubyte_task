class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers =  delimiters(numbers)
    numbers.split(/#{delimiter}/).map(&:to_i).sum
  end

  def delimiters(numbers)
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
    else
      delimiter, numbers = ",|\n", numbers
    end
  end
end
