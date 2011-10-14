# zurichdojo.ch
#
#
class Markov
  
  attr_reader :text
    
  def initialize text
    @text = text.strip
  end
  
  def analyze
    map = {}
    last_char = " "
    @text.chars.each do |char|
      map[last_char] ||= []
      map[last_char] << char
      last_char = char
    end
    map[last_char] ||= []
    map[last_char] << ' '
    map
  end
  
  def mapping
    @mapping ||= analyze
  end
  
  def next_char preceding
    choice = mapping[preceding]
    choice[rand(choice.size)]
  end
  
  def generate length = 1800
    char = " "
    result = []
    length.times do
      char = next_char char
      result << char
    end
    result.join
  end
  
end
