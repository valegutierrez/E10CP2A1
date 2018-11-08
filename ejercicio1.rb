# Clase Alumno
class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(path)
    alumnos = []
    path.each do |alumno|
      alumnos << Alumno.new(*alumno.chomp.split(', '))
    end
    print alumnos
  end
end

data = []
File.open('notas.txt', 'r') { |file| data = file.readlines }
Alumno.read_file(data)
