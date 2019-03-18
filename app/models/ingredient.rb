class Ingredient < ApplicationRecord
  validates_presence_of [:name, :serving_qty, :serving_unit]
  belongs_to :recipe
end
