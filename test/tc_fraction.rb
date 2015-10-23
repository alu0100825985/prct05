require "./lib/fraction.rb" # Añadimos el fichero fraction.rb con nuestra clase de operaciones aritméticas con fracciones.
require 'test/unit'

class Testfraction < Test::Unit::TestCase

   def test_add # Pruebas unitarias para la suma.
      assert_equal([1,2], Fraction.new(1,4).add(1,4)) 
      assert_equal([19,20], Fraction.new(3,4).add(1,5)) 
      assert_equal([169,50], Fraction.new(47,25).add(15,10))
   end
end
