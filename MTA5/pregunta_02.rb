#encoding:utf-8	
def calificacomerciante(tipo, ubicacion, ingresos, deudas)

end

def calcularTasa(monto)

end

def calcularCuota(tipo,ubicacion,ingresos,deudas,monto,meses)

end

#--- zona de test ----

def test_calificacomerciante
    print validate(true, calificacomerciante('B', 'P', 3000.0, 100.0)) 
	print validate(false, calificacomerciante('B', 'P', 3000.0, 1500.0)) 
	print validate(true, calificacomerciante('B', 'P', 6000.0, 600.0)) 
end

def test_calcularTasa
	print validate(55.00, calcularTasa(1000.0))
	print validate(40.00, calcularTasa(4500.0))
	print validate(48.00, calcularTasa(3000.0))	
end

def test_calcularCuota
	print validate(129.17, calcularCuota('B', 'P', 3000.0, 100.0, 1000.0, 12))
	print validate(0.0, calcularCuota('B', 'P', 3000.0, 1500.0, 1000.0, 12))
	print validate(194.44, calcularCuota('B', 'P', 6000.0, 600.0, 5000.0, 36))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calificacomerciante
  puts " "
  test_calcularTasa
  puts " "  
  test_calcularCuota  
  puts " "    
end
test