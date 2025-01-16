class GamesController < ApplicationController
    def new
      @game = Game.new
      # Inicializa la partida
    end
  
    def create
      @game = Game.new(game_params)
      @game.start_game
      if @game.save
        redirect_to @game
      else
        render :new
      end
    end
  
    def show
      @game = Game.find(params[:id])
      # Muestra el estado actual de la partida
    end
  
    def play
      @game = Game.find(params[:id])
      # Obtén la ficha que se intenta jugar y el jugador
      # Llama a @game.play_tile(...)
      redirect_to @game
    end
  
    private
  
    def game_params
      params.require(:game).permit(:title, :other_attributes)
    end
  end
  