class Ingredient < ActiveRecord::Base
  has_many :doses
  has_many :cocktails, through: :doses

  validates :name, presence: true, uniqueness: true
end

# before_remove: :check_cocktail_relation
# si cocktails.count
# return false ou exception

# private
#   def check_cocktail_relation
#   end
