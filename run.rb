require './controller'

calc = SitterCalculator.new(sitterQuestionaire)
p "Tonight's total will be: $#{calc.getNightlyCharge}"
