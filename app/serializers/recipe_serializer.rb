class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :recipe_totals
  has_many :ingredients
end
