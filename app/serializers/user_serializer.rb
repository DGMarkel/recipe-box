class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :name
  has_many :recipes
end
