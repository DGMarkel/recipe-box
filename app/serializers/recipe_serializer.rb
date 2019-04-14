class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :recipe_totals
  has_many :ingredients
end
