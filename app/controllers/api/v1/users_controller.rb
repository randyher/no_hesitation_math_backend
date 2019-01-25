class Api::V1::UsersController < Api::V1::ApiController

  before_action :require_login, except: [:create]


  def index
    users = User.all
    render json: users
  end


  def create
    user = User.create(user_params)
    render json: { token: user.auth_token }
  end

  def profile
    user = User.find_by_auth_token!(request_headers[:token])
    render json: { user: { username: user.username}}
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end


end
