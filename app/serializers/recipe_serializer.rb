class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :recipe_totals, :nutritional_data_per_serving, :creator_name
  has_many :ingredients
end
