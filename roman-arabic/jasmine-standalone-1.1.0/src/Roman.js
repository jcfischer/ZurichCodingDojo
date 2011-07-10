Array.prototype.contains = function(obj) {
  var i = this.length;
  while (i--) {
    if (this[i] === obj) {
      return true;
    }
  }
  return false;
}

function Roman() {
}
var lastRomanNumeral = function(string) {
	var lastTwo = string.substring(string.length-2, string.length);
	if (["IV", "IX", "XL", "XC", "CD", "CM"].contains(lastTwo)) {
		return lastTwo;
	}
	return string[string.length-1];
}

var stripLastRomanNumeral = function(string) {
	return string.substring(0,string.length-(lastRomanNumeral(string).length));
}

Roman.prototype.to_arabic = function(roman) {
	var arabic = 0;
	while (roman.length > 0) {
		switch (lastRomanNumeral(roman))
		{
			case "I" : arabic +=    1; break;
			case "IV": arabic +=    4; break;
			case "V" : arabic +=    5; break;
			case "IX": arabic +=    9; break;
			case "X" : arabic +=   10; break;
			case "XL": arabic +=   40; break;
			case "L" : arabic +=   50; break;
			case "XC": arabic +=   90; break;
			case "C" : arabic +=  100; break;
			case "CD": arabic +=  400; break;
			case "D" : arabic +=  500; break;
			case "CM": arabic +=  900; break;
			case "M" : arabic += 1000; break;
		}
		roman = stripLastRomanNumeral(roman);
	}
	return arabic;
}