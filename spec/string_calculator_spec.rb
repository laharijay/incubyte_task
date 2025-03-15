require_relative './spec_helper.rb'
require_relative '../string_calculator.rb'

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    expect(StringCalculator.new.add("")).to eq(0)
  end
end
