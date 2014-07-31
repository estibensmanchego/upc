#encoding:UTF-8
def calculargolestotales(goles)
 
end

def calcularequipoMenosGoleador(goles, equipos)

end

def calcularequipoMasGoleado(goles, equipos)

end

#--- zona de test ----

def test_calculargolestotales
    print validate(45, calculargolestotales([2,4,6,4,5,8,10,6]))
	  print validate(28, calculargolestotales([1,2,3,6,1,6,7,2]))
end

def test_calcularequipoMenosGoleador
	print validate("Los primos", calcularequipoMenosGoleador([72,60,25,45,35,78,65,50], ["Los compadres", "Los ases", "Los primos","Capitanes","Los primeros","Los destacados","Los mejores","La solucion"]))
	print validate("Dream Team", calcularequipoMenosGoleador([30,10,45,23,55,77,68,90], ["El equipo", "Dream Team","abc","peloteros","campeones","heroes","capaces","rapaces","genios"]))
end

def test_calcularequipoMasGoleado
  print validate("Los destacados", calcularequipoMasGoleado([72,60,25,45,35,78,65,50], ["Los compadres", "Los ases", "Los primos","Capitanes","Los primeros","Los destacados","Los mejores","La solucion"]))
  print validate("genios", calcularequipoMasGoleado([30,10,45,23,55,77,68,90], ["El equipo", "Dream Team","peloteros","campeones","heroes","capaces","rapaces","genios"]))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calculargolestotales
  test_calcularequipoMenosGoleador
  test_calcularequipoMasGoleado
  puts " "
end
test