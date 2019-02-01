class Api::V1::ProblemsController < ApplicationController

  def index
    @problems = Problem.all
    render json: @problems
  end

end
