require 'rspec'
require './roman_converter'

describe "RomanConverter" do
  
  { 1 => "I",
    2 => "II",
    3 => "III",
    4 => "IV",
    5 => "V",
    6 => "VI",
    7 => "VII",
    8 => "VIII",
    9 => "IX",
    10 => "X",
    11 => "XI",
    12 => "XII",
    13 => "XIII",
    14 => "XIV",
    15 => 'XV',
    16 => 'XVI',
    17 => 'XVII',
    18 => 'XVIII',
    19 => 'XIX',
    20 => 'XX',
    21 => 'XXI',
    22 => 'XXII',
    23 => 'XXIII',
    24 => 'XXIV',
    25 => 'XXV',
    26 => 'XXVI',
    27 => 'XXVII',
    28 => 'XXVIII',
    29 => 'XXIX',
    30 => 'XXX',
    34 => 'XXXIV',
    39 => 'XXXIX',
    40 => 'XL',
    44 => 'XLIV',
    54 => 'LIV',
    90 => 'XC',
    94 => 'XCIV',
    99 => 'XCIX',
    144 => 'CXLIV',
    154 => 'CLIV',
    190 => 'CXC',
    194 => 'CXCIV',
    199 => 'CXCIX',
    400 => 'CD',
    444 => 'CDXLIV',
    454 => 'CDLIV',
    490 => 'CDXC',
    494 => 'CDXCIV',
    499 => 'CDXCIX',
    844 => 'DCCCXLIV',
    900 => 'CM',
    944 => 'CMXLIV',
    954 => 'CMLIV',
    990 => 'CMXC',
    994 => 'CMXCIV',
    999 => 'CMXCIX',
    1009 => 'MIX',
    4000 => 'MMMM',
    1999 => 'MCMXCIX',
    4444 => 'MMMMCDXLIV'
    }.each do |arabic, roman|
      it "should convert #{arabic} to #{roman}" do
        RomanConverter.convert(arabic).should == roman
      end
  end
end
  
  