require "./lib/fraction.rb"
require 'test/unit'

class Testfraction < Test::Unit::TestCase

   def test_add
      assert_equal([2,4], fraction.new(1,4).add(1,4))       
   end
end
