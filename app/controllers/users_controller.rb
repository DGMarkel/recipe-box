class UsersController < ApiController
  before_action :require_login, except: [:create]

  def create
    user = User.create!(user_params)
    render json: { token: user.auth_token }
  end

  def profile
    user = User.find_by_auth_token!(request.headers[:token])
    user_recipes = Recipe.where(user_id: user.id)
    render json: {
      user: { username: user.username, email: user.email, name: user.name, id: user.id },
      recipes: user_recipes
    }
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email, :name)
  end

end
