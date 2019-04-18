class IngredientsController < ApiController
  before_action :require_login

  def update
    ingredient_params[:ingredients].each do |ingredient|
      updatedIngredient = Ingredient.find_by(food_name: ingredient[:food_name], recipe_id: ingredient_params[:id])
      updatedIngredient.update(ingredient)
    end
  end

  private

    def ingredient_params
      params.require(:recipe_data).permit(
        :id,
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
