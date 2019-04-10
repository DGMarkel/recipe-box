class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  validates_uniqueness_of :title

  def nutritional_data_points
    data_points = ingredients.first.attributes.map { |k, v| k }
    data_points - ["id", "food_name", "brand_name", "serving_qty", "serving_unit", "serving_weight_grams", "created_at", "updated_at"]
  end

  def recipe_totals
    nutritional_data_points.map do |data_point|
      ingredients.sum(&:"#{data_point}")
    end
  end

end
