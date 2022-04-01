class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ratios, dependent: :destroy

  validates :name, :number_of_people, presence: true
end
