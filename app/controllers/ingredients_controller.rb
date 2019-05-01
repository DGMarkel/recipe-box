class IngredientsController < ApiController
  before_action :require_login, only: [:update, :destroy]

  def update
    recipe_id = Recipe.find(ingredient_params[:recipeID])
    food_name = ingredient_params[:ingredient_data][:food_name]
    ingredient = Ingredient.find_by(food_name: food_name, recipe_id: recipe_id)
    ingredient.update(ingredient_params[:ingredient_data])
  end

  def search
    recipes = []
    Ingredient.where("food_name like ?", "%#{ingredient_params[:search_term]}%").each { |ingredient| recipes.push(ingredient.recipe) }
    render json: recipes
  end

  def destroy
    ingredient = Ingredient.find_by(food_name: ingredient_params[:ingredient_data][:food_name], recipe_id: ingredient_params[:recipeID])
    ingredient.destroy
  end

  private

    def ingredient_params
      params.require(:ingredient).permit(
        :search_term,
        :recipeID,
        :ingredient_data => {}
      )
    end

end
