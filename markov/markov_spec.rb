require 'rspec'
require './markov.rb'

describe Markov do
  
  before(:each) do
    @m = Markov.new("hello world ")
  end
  
  context ".initialize" do
    it "takes a string" do
      m = Markov.new("hello world")
    end

    it "it sets the instance variable correctly" do
      @m.text.should == "hello world"
    end
  end

  context "#analyze" do
    it "has a method analyze" do
      @m.should respond_to(:analyze)
    end
    
    it "returns a hash structure: char => [char1, char2, char3]" do
      @m.analyze.should == {
        " " => ["h", "w"],
        "h" => ["e"],
        "e" => ["l"],
        "l" => ["l", "o", "d"],
        "o" => [" ", "r"],
        "w" => ["o"],
        "r" => ["l"],
        "d" => [" "],
      }
    end
    
    it "stores the hash structure" do
      @m.analyze
      @m.mapping.should == {
        " " => ["h", "w"],
        "h" => ["e"],
        "e" => ["l"],
        "l" => ["l", "o", "d"],
        "o" => [" ", "r"],
        "w" => ["o"],
        "r" => ["l"],
        "d" => [" "],
      }
    end
  end
  
  context "#generate" do
    it "has a method generate" do
      @m.should respond_to(:generate)
    end

    it "returns a string" do
      @m.generate.should be_instance_of(String)
    end
    
    it "takes a param for length" do
      lambda do
        @m.generate(1000)
      end.should_not raise_error
    end
    it "returns a string of the given length" do
      @m.generate(20).size.should == 20
    end

    it "returns a string of the given length" do
      @m.generate(42).size.should == 42
    end
    
    it "returns a correct string" do
      m = Markov.new("abcdef")
      m.generate(13).should == "abcdef abcdef" 
    end
  end
  
  context "#next_char" do
    it "returns the next char, given a char" do
      @m.next_char("e").should == "l"
      @m.next_char("h").should == "e"
    end
    it "returns a possible next char" do
      @m.stub! :mapping => {
        " " => ["w", "w"]
      }
      @m.next_char(" ").should == "w"
    end
  end
  
  context "#initial_char" do
    it "returns a String" do
      @m.initial_char.should be_instance_of(String)
    end
    
    it "is length 1" do
      @m.initial_char.size.should == 1
    end
    
    it "takes a character from the beginning of a word" do
      ['h', 'w'].should include(@m.initial_char)
    end
    
    it "takes a character from the beginning of a word" do
      was_a_w = false
      1000.times do
        was_a_w = @m.initial_char == "w"
        break if was_a_w
      end
      was_a_w.should == true
    end
  end
  
end
