class ArmstrongNumbers
    def self.include?(number)
        sum = 0
        number.digits.each do |num|
            sum += num ** number.digits.count
        end
        puts sum
        puts sum == number
    end
end

ArmstrongNumbers.include?(10)
ArmstrongNumbers.include?(100)
ArmstrongNumbers.include?(9475)
ArmstrongNumbers.include?(9926314)
ArmstrongNumbers.include?(0)
ArmstrongNumbers.include?(5)
ArmstrongNumbers.include?(153)
ArmstrongNumbers.include?(9474)
ArmstrongNumbers.include?(9926315)
ArmstrongNumbers.include?(186709961001538790100634132976990)
ArmstrongNumbers.include?(115132219018763992565095597973971522401)    