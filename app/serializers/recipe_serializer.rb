class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image, :recipe_totals
  has_many :ingredients
end
