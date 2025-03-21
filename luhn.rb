class Luhn
    def self.valid?(num)
      clean_num = num.gsub(/\s+/, '')
      
      if clean_num.scan(/\D/).empty? == false || clean_num.length <= 1
        return false
      end
      
      clean_num = clean_num.chars.map {|num| num.to_i}
  
      clean_num = luhn_alg(clean_num)
  
      return clean_num.sum % 10 == 0 ? true : false
    end
  
    def self.luhn_alg(nums)
      length = nums.length * -1
      count = -2
      while count >= length
        nums[count] = nums[count] * 2
        if nums[count] > 9 then nums[count] -= 9 end
        count -= 2
      end
  
      return nums
    end
end