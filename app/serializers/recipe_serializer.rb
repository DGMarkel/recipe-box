class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :creator_name
  has_many :ingredients
end
