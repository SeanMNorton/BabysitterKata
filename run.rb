class SitterCalculator
  attr_reader :startTime, :bedTime, :endTime

  def initialize(startTime, bedTime, endTime)
    @startTime = startTime
    @bedTime = bedTime
    @endTime = endTime
  end

  def getNightlyCharge
    return (startToBed + bedToMidnight + midnightToEnd)
  end

private
  def startToBed
    (@bedTime - @startTime) * 12
  end

  def bedToMidnight
    if @endTime < 12
      return (@endTime - @bedTime) * 8
    else
      return (12 - @bedTime) * 8
    end
  end

  def midnightToEnd
    if @endTime < 12
      return 0
    else
      (@endTime - 12) * 16
    end
  end

end
