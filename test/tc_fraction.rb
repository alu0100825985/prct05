require "./lib/fraction.rb"
require 'test/unit'

class Testfraction < Test::Unit::TestCase

   def test_add
      assert_equal([1,2], Fraction.new(1,4).add(1,4)) 
      assert_equal([19,20], Fraction.new(3,4).add(1,5))         
   end
end
