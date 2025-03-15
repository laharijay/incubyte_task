require_relative './spec_helper.rb'
require_relative '../string_calculator.rb'

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    expect(StringCalculator.new.add("")).to eq(0)
  end

  it "returns the number itself for a single number" do
    expect(StringCalculator.new.add("1")).to eq(1)
  end

  it "returns the sum of two numbers" do
    expect(StringCalculator.new.add("1,2")).to eq(3)
  end

  it "returns the sum of multiple numbers" do
    expect(StringCalculator.new.add("1,2,3")).to eq(6)
  end

  it "handles new lines as delimiters" do
    expect(StringCalculator.new.add("1\n2,3")).to eq(6)
  end

  it "handles custom delimiter with // notation" do
    expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
  end
end
