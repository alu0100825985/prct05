# MÍNIMO COMÚN MÚLTIPLO.

def lcm(u, v)
   u, v = u.abs, v.abs # Función abs para hallar el valor absoluto de ambos números.
   aux = 0 # Declaración de una variable auxiliar. Inicializada en 0.

   if(v > u) # CONDICIÓN: Si v es mayor que u, intercambiamos sus valores haciendo uso de la variable auxiliar.
   	aux = u # Conservamos el valor de u.
   	u = v # Almacenamos el valor de v en u.
   	v = aux # Almacenamos en v el valor de u que habiamos conservado.
   end 

   (u / gcd(u,v)) * v # Devolvemos u entre el máximo común divisor de ambos números y multiplicado por v.
end