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
    recipe = Recipe.new(title: recipe_params[:title], description: recipe_params[:description], image_url: recipe_params[:image_url])
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

  def update
    recipe = Recipe.find_by(title: recipe_params[:title])
    if recipe.update(recipe_params)
      recipe.ingredients.update(recipe_params[:ingredients].to_h)
      render json: {
      message: 'ok',
      recipe: recipe
      }
    else
      render json: {
        message: 'Could not update recipe'
      }
    end
  end

  private

    def recipe_params
      params.require(:recipe).permit(
        :title,
        :description,
        :image_url,
        ingredients: [
          :food_name,
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
