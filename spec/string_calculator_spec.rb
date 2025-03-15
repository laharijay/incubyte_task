require_relative './spec_helper.rb'
require_relative '../string_calculator.rb'

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    expect(StringCalculator.new.add("")).to eq(0)
  end

  it "returns the number itself for a single number" do
    expect(StringCalculator.new.add("1")).to eq(1)
  end
end
