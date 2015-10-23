require './lib/gcd.rb' # Añadimos el fichero gcd con el MÁXIMO COMÚN DIVISOR.
require './lib/lcm.rb' # Añadimos el fichero lcm con el MÍNIMO COMÚN MÚLTIPLO.

	class Fraction # Clase para la implementación de las operaciones aritméticas básicas con fracciones.

		#-----> MÉTODOS ELEMENTALES DE LA CLASE.

		def initialize(variable_num, variable_den) # Constructor de la clase.
			@numerator, @denominator = reduction(variable_num, variable_den) # Llamada al método reduction para almacenar en unas variables de instancia 
		end															   # el numerador y el denominador de la fracción reducidos.

		def reduction(variable_num, variable_den) # Método que recibe una fracción por parámetro y la devuelve con sus valores reducidos. 
			max_divisor = gcd(variable_num, variable_den) # Llamada al método gcd() para obtener el máximo común divisor de ambos números.
			variable_num = variable_num / max_divisor # Divisimos el numerador por el max_divisor.
			variable_den = variable_den / max_divisor # Dividimos el denominador por el max_divisor.
			return variable_num, variable_den # Devolvemos ambos valores.
		end

		def to_s # Método to_String para mostrar ambos números por pantalla.
			 "(#{@numerator},#{@denominator})"
		end 

		#-----> MÉTODOS ARITMÉTICOS DE LA CLASE.

        #------------------------------------------------------------ SUMA -----------------------------------------------------------------

		def add(variable_num, variable_den) # Método para realizar la suma entre la fracción inicializada y otra pasada por parámetro.
			numerator_reduc, denominator_reduc = reduction(variable_num, variable_den) # Llamada al método reduction() para reducir ambos valores.
				if (denominator_reduc == @denominator) # CONDICIÓN: Si ambos denominadores coinciden.
					@numerator = @numerator + numerator_reduc # Sumamos los numeradores y lo almacenamos en la variable instancia.
					numerator_result, denominator_result = reduction(@numerator,@denominator) # Finalmente almacenamos en dos variables ambos valores reducidos nuevamente.
				else # CONDICIÓN: Si los denominadores no coinciden.
					least_multiple = lcm(@denominator, denominator_reduc) # Llamada al método lcm() para hallar el mínimo común multiplo de ambos denominadores.
					numerator_add = ((least_multiple / @denominator) * @numerator) + ((least_multiple / denominator_reduc) * numerator_reduc) # Dividimos el mínimo entre cada denominador y multiplicamos por su correspondiente numerador, para luego sumar ambos.
					numerator_result, denominator_result = reduction(numerator_add, least_multiple) # Finalmente almacenamos en dos variables ambos valores reducidos nuevamente.
				end	
			return numerator_result, denominator_result # Devolvemos los valores resultantes.
		end

		#------------------------------------------------------------ RESTA ---------------------------------------------------------------

		def substraction(variable_num, variable_den) # Método para realizar la resta entre la fracción inicializada y otra pasada por parámetro.
			numerator_reduc, denominator_reduc = reduction(variable_num, variable_den) # Llamada al método reduction() para reducir ambos valores.
				if (denominator_reduc == @denominator) # CONDICIÓN: Si ambos denominadores coinciden.
					@numerator = @numerator - numerator_reduc # Restamos los numeradores y lo almacenamos en la variable instancia.
					numerator_result, denominator_result = reduction(@numerator,@denominator) # Finalmente almacenamos en dos variables ambos valores reducidos nuevamente.
                else # CONDICIÓN: Si los denominadores no coinciden.
                    least_multiple = lcm(@denominator, denominator_reduc) # Llamada al método lcm() para hallar el mínimo común multiplo de ambos denominadores.
                    numerator_substraction = ((least_multiple / @denominator) * @numerator) - ((least_multiple / denominator_reduc) * numerator_reduc) # Dividimos el mínimo entre cada denominador y multiplicamos por su correspondiente numerador, para luego restar ambos.
                    numerator_result, denominator_result = reduction(numerator_substraction, least_multiple) # Finalmente almacenamos en dos variables ambos valores reducidos nuevamente.
                end
            return numerator_result, denominator_result # Devolvemos los valores resultantes.
		end
		
		#------------------------------------------------------------ PRODUCTO ------------------------------------------------------------

		def product(variable_num, variable_den) # Método para realizar el producto entre la fracción inicializada y otra pasada por parámetro.
			numerator_reduc, denominator_reduc = reduction(variable_num, variable_den) # Llamada al método reduction() para reducir ambos valores.
			@numerator = @numerator * numerator_reduc # Hacemos el producto de los numeradores y los almacenamos en la variable de instancia.
			@denominator = @denominator * denominator_reduc # Hacemos el producto de los denominadores y los almacenamos en la variable de instancia.
		
			numerator_result, denominator_result = reduction(@numerator, @denominator) # Finalmente almacenamos en dos variables ambos valores reducidos nuevamente.
			return numerator_result, denominator_result # Devolvemos los valores resultantes.
		end

		#------------------------------------------------------------ DIVISIÓN ------------------------------------------------------------

		def division(variable_num, variable_den) # Método para realizar la división entre la fracción inicializada y otra pasada por parámetro.
			numerator_reduc, denominator_reduc = reduction(variable_num, variable_den) # Llamada al método reduction() para reducir ambos valores.
			@numerator = @numerator * denominator_reduc # Hacemos el producto del numerador por el denominador opuesto y los almacenamos en la variable de instancia.
			@denominator = @denominator * numerator_reduc # Hacemos el producto del denominador y por el numerador opuesto y los almacenamos en la variable de instancia.
		
			numerator_result, denominator_result = reduction(@numerator, @denominator) # Finalmente almacenamos en dos variables ambos valores reducidos nuevamente.
			return numerator_result, denominator_result # Devolvemos los valores resultantes.
		end
	end
