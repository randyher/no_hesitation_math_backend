class Api::V1::GamesproblemsController < ApplicationController


  def index
    @gp = Gamesproblem.all
    render json: @gp
  end

  def create
    gameproblem = Gamesproblem.create(gp_params)

  end

  private

    def gp_params
    params.require(:gamesproblem).permit(:game_id, :problem_id, :answer)
    end

end
