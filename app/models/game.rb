class Game < ApplicationRecord
    # has_many :players
    # Podrías tener un método para iniciar la partida y repartir fichas
  
    def start_game
      # Generar todas las fichas (0-0, 0-1, ..., 6-6)
      @all_tiles = []
      (0..6).each do |i|
        (i..6).each do |j|
          @all_tiles << DominoTile.new(i, j)
        end
      end
  
      # Barajar y repartir
      @all_tiles.shuffle!
      # Asigna 7 u 8 fichas por jugador, según la modalidad
      # ...
    end
  
    def play_tile(player, tile, side)
      # Lógica para colocar la ficha en el lado correcto del tablero
      # ...
    end
  end
  