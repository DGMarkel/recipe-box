class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  validates_uniqueness_of :title
end
