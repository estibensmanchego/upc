def calcularpromedioconsumo(lecturas)
	totaldatos = lecturas.size
	suma = 0.00
	for i in 0...lecturas.size # el profesor les pudo haber puesto lecturas.size-1 por que el for cuenta no mas y supera a los 16 items y al fina te lanza error
		suma = suma + lecturas[i]
	end
	return (suma/totaldatos).round(2)
end

def calcularpromediohogar(medidas)
	medidas_unicas = medidas.uniq
	medidas_ordenadas = medidas.sort
	solodies = medidas_ordenadas.slice(0,10)
	#puts solodies
	totaldatos = solodies.size
	suma = 0.00
	for i in 0...solodies.size
		suma = suma + medidas_unicas[i]
	end
	puts (suma/totaldatos).round(2)
	return (suma/totaldatos).round(2)
end

def determinarmejorcliente(lecturas,nombres)

end


#--- zona de test ----

def test_calcularpromedioconsumo
	lecturas1=[110.00, 120.00, 160.00, 180.00, 50.00, 130.00, 150.00, 110.00, 70.00, 120.00, 170.00, 200.00, 110.00,230.00,450.00,175.0]
	lecturas2=[150.00, 130.00, 120.00, 170.00, 150.00, 30.00, 160.00, 100.00, 80.00, 200.00, 160.00, 120.00, 150.00,145.0,189.0,174.0]	
	lecturas3=[130.00, 100.00, 140.00, 150.00, 130.00, 110.00, 170.00, 90.00, 50.00, 150.00, 130.00, 180.00, 130.00,256.0,139.0,156.0]	
    print validate(158.44, calcularpromedioconsumo(lecturas1)) 
    print validate(139.25, calcularpromedioconsumo(lecturas2)) 
    print validate(138.19, calcularpromedioconsumo(lecturas3)) 
end

def test_calcularpromediohogar
	medidas1=[110.00, 120.00, 160.00, 180.00, 50.00, 130.00, 150.00, 110.00, 70.00, 120.00, 170.00, 20.00, 110.00,230.00,450.00,175.0]
	medidas2=[150.00, 130.00, 120.00, 170.00, 150.00, 30.00, 160.00, 100.00, 80.00, 200.00, 160.00, 120.00, 150.00,145.0,189.0,174.0]	
	medidas3=[130.00, 100.00, 140.00, 150.00, 130.00, 110.00, 170.00, 90.00, 50.00, 150.00, 130.00, 180.00, 130.00,56.0,139.0,156.0]	

	print validate(137.0, calcularpromediohogar(medidas1)) 
	print validate(145.0, calcularpromediohogar(medidas2)) 
	print validate(135.0, calcularpromediohogar(medidas3)) 
end

def test_determinarmejorcliente
	lecturas1=[110.00, 120.00, 160.00, 180.00, 50.00, 130.00, 150.00, 110.00, 70.00]
	lecturas2=[150.00, 190.00, 120.00, 170.00, 150.00, 30.00, 160.00, 100.00, 80.00]	
	lecturas3=[103.00, 100.00, 140.00, 150.00, 130.00, 110.00, 170.00, 90.00, 50.00]	

	alumnos=["Jose Perez","Lorena Quispe", "Cecilia Araoz", "Diana Pinto","Alfredo Castro","Myrna Calle","Pedro Carlos","Esteban Guzman","Karla Medina"]		
	
    print validate("Alfredo Castro",determinarmejorcliente(lecturas1,alumnos)) 
    print validate("Myrna Calle",determinarmejorcliente(lecturas2,alumnos)) 
    print validate("Karla Medina",determinarmejorcliente(lecturas3,alumnos)) 
end



def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularpromedioconsumo
  puts " "
  test_calcularpromediohogar
  puts " "
  test_determinarmejorcliente
  puts " "
end
test