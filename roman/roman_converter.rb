module RomanConverter
  
  NUMERALS = [
    [1000, "M"],
    [ 500, "D"],
    [ 100, "C"],
    [  50, "L"],
    [  10, "X"],
    [   5, "V"],
    [   1, "I" ]
  ]        
  
  def self.convert num
    roman_string = ""
    
    while num > 0
      NUMERALS.each_with_index do |pair, i|
        arabic = pair.first
        roman  = pair.last
        
        offset =  i.odd? ? 1 : 2
        
        if ((i + offset) < NUMERALS.length)
          offset_pair   = NUMERALS[i + offset]
          offset_arabic = offset_pair.first
          offset_roman  = offset_pair.last
        
          if (num >= arabic - offset_arabic && num < arabic)
            roman_string += offset_roman + roman
            num -= (arabic - offset_arabic)
            break
          end
        end
        
        if num >= arabic
          roman_string += roman
          num -= arabic
          break
        end    
      end
    end 
    roman_string
  end
end