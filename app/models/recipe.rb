class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  validates_uniqueness_of :title

  def nutritional_data_points
    data_points = ingredients.first.attributes.map { |k, v| k }
    data_points - ["id", "recipe_id", "food_name", "brand_name", "serving_qty", "serving_unit", "serving_weight_grams", "created_at", "updated_at"]
  end

  def recipe_totals
    recipe_totals = Hash.new
    nutritional_data_points.each do |data_point|
      recipe_totals[:"#{data_point}"] = ingredients.map(&:"#{data_point}").compact.sum
    end
    recipe_totals
  end

end
