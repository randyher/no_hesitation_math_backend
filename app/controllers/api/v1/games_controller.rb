class Api::V1::GamesController < ApplicationController

  before_action :find_game, only: [:update, :show]

  def index
    @games = Game.all
    render json: @games
  end

  def show
    render json: @game
  end

  def update
    @game.update(game_params)
    if @game.save
      @games = Show.all
      render json: @games, status: :accepted
    else
      render json: {errors: @game.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private

    def game_params
      params.permit(:user_is, :score)
    end

    def find_game
        @game = Game.find(params[:id])
    end

end
