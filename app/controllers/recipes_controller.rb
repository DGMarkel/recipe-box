class RecipesController < ApiController
  before_action :require_login, except: [:index, :show]

  def index
    recipes = Recipe.all
    render json: { recipes: recipes }
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: { recipe: recipe }
  end

  def create
    recipe = Recipe.new(title: recipe_params[:title])
    recipe.user = current_user
    if recipe.save
      recipe.ingredients.create("name": params[:recipe][:ingredients][0][:name])
      render json: {
      message: 'ok',
      recipe: recipe
      }
    else
      render json: {
        message: 'Could not create recipe'
      }
    end
  end

  private

    def recipe_params
      params.require(:recipe).permit(:title, ingredients: [:name])
    end

end
