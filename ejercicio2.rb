# Modulo Formula
module Formula
  def perimetro
    @perimeter = (@base + @altura) * 2
    puts "Perímetro: #{@perimeter}"
  end

  def area
    @area = @base * @altura
    puts "Área: #{@area}"
  end
end
# Clase Rectangulo
class Rectangulo
  attr_reader :base, :altura
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    puts "Ancho: #{@base}, Alto: #{@altura}"
  end
end

# Clase Cuadrado
class Cuadrado
  attr_reader :base, :altura
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "Ancho: #{@lado}, Alto: #{@lado}"
    @base = @lado
    @altura = @lado
  end
end
square = Cuadrado.new(10)
rectangle = Rectangulo.new(6, 4)

square.lados
square.perimetro
square.area

rectangle.lados
rectangle.perimetro
rectangle.area
