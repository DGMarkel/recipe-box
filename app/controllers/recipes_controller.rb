class RecipesController < ApiController
  before_action :require_login, except: [:index, :show]

  def index
    recipes = Recipe.all
    render json: recipes
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: recipe
  end

  def create
    recipe = Recipe.new(title: recipe_params[:title])
    recipe.user = current_user
    if recipe.save
      recipe.ingredients.create(recipe_params[:ingredients])
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
      params.require(:recipe).permit(
        :title,
        ingredients: [
          :name,
          :serving_qty,
          :serving_unit,
          :calories,
          :total_fat,
          :saturated_fat,
          :cholesterol,
          :sodium,
          :total_carbohydrate,
          :dietary_fiber,
          :sugars,
          :protein,
          :potassium
        ]
      )
    end

end
