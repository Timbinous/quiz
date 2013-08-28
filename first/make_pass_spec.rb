class Calculator
  def self.multiply(first, second)
    # enter code here
  end

  def self.add(*numbers)
    numbers.inject { |sum, num| sum + num }
  end
end

describe Calculator do
  describe ".multiply" do
    context "when passing two integers in" do
      it "multiplies them together" do
        Calculator.multiply(5, 6).should == 30
      end
    end
  end

  describe ".add" do
    context "when passing multiple integers in" do

      #write a test for the add method
      it "adds them together" do

      end
    end
  end
end

