class DominoTile
    attr_accessor :left, :right
  
    def initialize(left, right)
      @left = left
      @right = right
    end
  
    # Método para mostrar la ficha en string si lo deseas
    def to_s
      "#{left}-#{right}"
    end
  end  