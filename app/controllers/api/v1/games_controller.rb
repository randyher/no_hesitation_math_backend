class Api::V1::GamesController < Api::V1::ApiController

  before_action :require_login, except: [:index, :show]
  before_action :find_game, only: [:update, :show]

  def index
    @games = Game.all
    render json: @games
  end

  def create
    game = Game.new(game_params)
    game.user = current_user
    if game.save
      render json: {
        message: "Ok",
        game: game
      }
    else
      render json: {message: "No Game!"}
    end
  end

  def show
    @game = Game.find(params[:id])
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
    params.require(:game).permit(:user_id, :score, :time_remaining)
    end

    def find_game
        @game = Game.find(params[:id])
    end

end
