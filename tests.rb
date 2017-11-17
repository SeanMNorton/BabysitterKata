require './run.rb'

RSpec.configure do |config|
  config.tty = true
  config.color = true
  config.formatter = :documentation
end


describe SitterCalculator do
  before do
    @calc = SitterCalculator.new(4, 7, 10)
  end
  it "is initialized with startTime" do
     expect(@calc.startTime).to eq(4)
  end
  it "is initialized with bedTime" do
     expect(@calc.bedTime).to eq(7)
  end
  it "is initialized with endTime" do
     expect(@calc.endTime).to eq(10)
  end
end
