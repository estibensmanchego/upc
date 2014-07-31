#encoding:UTF-8
def productoMasVendido(productos, ventas)
 
end

def mayorRentabilidad(productos, precios, costos)

end

def variacion(productos, precios, costos)

end

#--- zona de test ----

def test_productoMasVendido
     print validate("fideos", productoMasVendido(["leche","fideos","arroz","azucar","aceite"], [100,120,60,40,50]))
	 print validate("azucar", productoMasVendido(["leche","fideos","arroz","azucar","aceite"], [100,120,60,140,50]))
end

def test_mayorRentabilidad
	print validate("azucar", mayorRentabilidad(["leche","fideos","arroz","azucar","aceite"],[10.0,10.0,10.0,10.0,10.0],[8.0,7.0,8.0,6.0,8.0]))
	print validate("fideos", mayorRentabilidad(["leche","fideos","arroz","azucar","aceite"],[10.0,10.0,10.0,10.0,10.0],[8.0,2.0,8.0,6.0,8.0]))
end

def test_variacion
    print validate("azucar", variacion(["leche","fideos","arroz","azucar","aceite"],[10.0,10.0,10.0,10.0,10.0],[8.0,7.0,8.0,6.0,8.0]))
	print validate("leche", variacion(["leche","fideos","arroz","azucar","aceite"],[10.0,10.0,10.0,10.0,10.0],[4.0,8.0,8.0,9.0,8.0]))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_productoMasVendido
  test_mayorRentabilidad
  test_variacion
  puts " "
end
test