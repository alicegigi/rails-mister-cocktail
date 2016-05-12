class Ingredient < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :doses
  # before_remove: :check_cocktail_relation
end


# si cocktails.count
# return false ou exception

# private
#   def check_cocktail_relation
#   end
