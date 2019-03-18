class RecipesController < ApiController
  before_action :require_login, except: [:index, :show]

  def index
    recipes = Recipes.all
    render json: { recipes: recipes }
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: { recipe: recipe }
  end

  def create
    recipe = Recipe.new(recipe_params)
    recipe.user = current_user
    if recipe.save
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
      params.require(:recipe).permit(:title, :description)
    end

end
