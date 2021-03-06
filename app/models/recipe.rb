class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank? }
  validates :name, presence: true
  validates :name, uniqueness: true
end
