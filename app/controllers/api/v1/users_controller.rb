class Api::V1::UsersController < Api::V1::ApiController

  before_action :require_login, except: [:create]


  def index
    users = User.all
    render json: users
  end

  def show
    uses = User.find(params[:id])
    render json: user
  end


  def create
    user = User.create(user_params)
    render json: { token: user.auth_token }
  end

  def profile
    user = User.find_by_auth_token!(request.headers[:token])
    user_games = user.games
    render json: { user: { username: user.username, grade: user.grade}, games: user_games }
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :grade)
  end


end
