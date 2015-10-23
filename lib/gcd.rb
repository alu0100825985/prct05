# MÁXIMO COMÚN DIVISOR.

def gcd(u, v) 
  u, v = u.abs, v.abs # Función abs para hallar el valor absoluto de ambos números.
  while v != 0 # Mientras v no sea igual a 0. Error corregido del fichero original.
    u, v = v, u % v # u será igual a v, y v pasará a ser el módulo de u entre v.
  end # En el momento que v sea igual a 0.
  u # Devolvemos u.
end