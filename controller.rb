class SitterCalculator
  attr_reader :startTime, :bedTime, :endTime

  def initialize(args)
    @startTime = args[0]
    @bedTime = args[1]
    @endTime = args[2]
  end

  def getNightlyCharge
    return (startToBed + bedToMidnight + midnightToEnd)
  end

private
  def startToBed
    if @startTime > @bedTime
      return 0
    else
      return (@bedTime - @startTime) * 12
    end
  end

def bedToMidnight
  if @endTime > 4
    return (@endTime - @bedTime) * 8
  elsif @startTime > @bedTime
    return (12 - @startTime) * 8
  else
    return (12 - @bedTime) * 8
  end
end

  def midnightToEnd
    if @endTime > 4
       return 0
    else
       (@endTime) * 16
    end
  end
end

def sitterQuestionaire
  def getStartTime
    print "Start Time: "
    startTime = gets.chomp.to_i
    if startTime > 4
      return startTime
    else
      puts "I'll start no earlier than 5:00PM!"
      getStartTime
    end
  end

  def getBedTime
    print "Bed Time: "
    bedTime = gets.chomp.to_i
  end

  return [getStartTime, 9 , 1]
end
