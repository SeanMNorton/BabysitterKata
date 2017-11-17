require './run.rb'


RSpec.configure do |config|
  config.tty = true
  config.color = true
  config.formatter = :documentation
end


describe SitterCalculator do
  before do
    @calc = SitterCalculator.new(5, 7, 10)
  end
  it "is initialized with startTime" do
     expect(@calc.startTime).to eq(5)
  end
  it "is initialized with bedTime" do
     expect(@calc.bedTime).to eq(7)
  end
  it "is initialized with endTime" do
     expect(@calc.endTime).to eq(10)
  end
 describe "getNightlyCharge" do
   it "returns a number" do
     expect(@calc.getNightlyCharge).to be_a_kind_of(Integer)
   end
   it "returns the correct amount" do
     expect(@calc.getNightlyCharge).to eq(48)
   end
 end

 describe "startToBed" do
   it "returns dollar amount for startTime to Bedtime charge" do
     expect(@calc.send(:startToBed)).to eq(24)
   end
 end

 describe "bedToMidnight" do
   it "returns dollar amount for bedTime to midnight charge" do
     expect(@calc.send(:bedToMidnight)).to eq(24)
   end
 end

 describe "midnightToEnd" do
   it "returns dollar amount for midnight to endtime charge" do
     expect(@calc.send(:midnightToEnd)).to eq(0)
   end
 end

end
