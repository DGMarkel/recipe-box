class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :recipe_totals, :creator_name
  has_many :ingredients
end
