class SitterCalculator
  attr_accessor :startTime, :bedTime, :endTime
  def initialize(startTime, bedTime, endTime)
    @startTime = startTime
    @bedTime = bedTime
    @endTime = endTime
  end

end
