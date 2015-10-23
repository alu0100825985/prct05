require "./lib/fraction.rb" # Añadimos el fichero fraction.rb con nuestra clase de operaciones aritméticas con fracciones.
require 'test/unit'

class TestFraction < Test::Unit::TestCase

   	def test_add # Pruebas unitarias para la suma.
   		assert_equal([1,2], Fraction.new(1,4).add(1,4)) 
   		assert_equal([19,20], Fraction.new(3,4).add(1,5)) 
   		assert_equal([169,50], Fraction.new(47,25).add(15,10))
   	end

   	def test_substraction # Pruebas unitarias para la resta.
   		assert_equal([1,4], Fraction.new(2,4).substraction(1,4)) 
   		assert_equal([11,20], Fraction.new(3,4).substraction(1,5))
   		assert_equal([19,50], Fraction.new(47,25).substraction(15,10))
   	end

   	def test_product # Pruebas unitarias para el producto.
   		assert_equal([1,8], Fraction.new(2,4).product(1,4)) 
   		assert_equal([3,20], Fraction.new(3,4).product(1,5))
   		assert_equal([141,50], Fraction.new(47,25).product(15,10))
   	end

   	def test_division # Pruebas unitarias para la división.
   		assert_equal([2,1], Fraction.new(2,4).division(1,4)) 
   		assert_equal([15,4], Fraction.new(3,4).division(1,5))
   	end
end
