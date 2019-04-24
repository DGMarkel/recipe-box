class IngredientsController < ApiController
  before_action :require_login

  def destroy
    ingredient = Ingredient.find_by(food_name: ingredient_params[:ingredient_data][:food_name], recipe_id: ingredient_params[:id])
    ingredient.destroy
  end

  private

    def ingredient_params
      params.require(:ingredient).permit(
        :ingredient_data => {}
      )
    end

end
