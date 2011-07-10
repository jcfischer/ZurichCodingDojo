describe("Roman", function() {
  var roman;

  beforeEach(function() {
		roman = new Roman();	
  });

  it("should transform roman numeral I to arabic 1", function() {
    expect(roman.to_arabic("I")).toEqual(1);
  });

  it("should transform roman numeral II to arabic 2", function() {
    expect(roman.to_arabic("II")).toEqual(2);
  });

  it("should transform roman numeral III to arabic 3", function() {
    expect(roman.to_arabic("III")).toEqual(3);
  });

  it("should transform roman numeral IV to arabic 4", function() {
    expect(roman.to_arabic("IV")).toEqual(4);
  });

  it("should transform roman numeral V to arabic 5", function() {
    expect(roman.to_arabic("V")).toEqual(5);
  });

  it("should transform roman numeral VI to arabic 6", function() {
    expect(roman.to_arabic("VI")).toEqual(6);
  });

  it("should transform roman numeral VII to arabic 7", function() {
    expect(roman.to_arabic("VII")).toEqual(7);
  });

  it("should transform roman numeral IX to arabic 9", function() {
    expect(roman.to_arabic("IX")).toEqual(9);
  });

  it("should transform roman numeral MCMXCIX to arabic 1999", function() {
    expect(roman.to_arabic("MCMXCIX")).toEqual(1999);
  });

	it("should transform roman numeral MMMMCDXLIV to arabic 4444", function() {
  	expect(roman.to_arabic("MMMMCDXLIV")).toEqual(4444);
	});
});

describe("lastRomanNumeral", function() {
	var string;
	
	beforeEach(function() {

	})
	
	it("should return an I for I", function() {
		string = "I";
		expect(lastRomanNumeral(string)).toEqual("I");
	})
	
	it("should return an IV for IV", function() {
		string = "IV";
		expect(lastRomanNumeral(string)).toEqual("IV");
	})
	
	it("should return an IV for XIV", function() {
		string = "XIV";
		expect(lastRomanNumeral(string)).toEqual("IV");
	})
})

describe("stripLastRomanNumeral", function() {
	var string;
	
	beforeEach(function() {
	})
	
	it("should return an I for II", function() {
		string = "II";
		expect(stripLastRomanNumeral(string)).toEqual("I");
	})
	
	it("should return an X for XIV", function() {
		string = "XIV";
		expect(stripLastRomanNumeral(string)).toEqual("X");
	})
	
	it("should return an empty for IV", function() {
		string = "IV";
		expect(stripLastRomanNumeral(string)).toEqual("");
	})
	
	it("should return an empty for VI", function() {
		string = "VI";
		expect(stripLastRomanNumeral(string)).toEqual("V");
	})
	
	it("should return an empty for IX", function() {
		string = "IX";
		expect(stripLastRomanNumeral(string)).toEqual("");
	})
	
	it("should return an empty for CIX", function() {
		string = "CIX";
		expect(stripLastRomanNumeral(string)).toEqual("C");
	})
})
