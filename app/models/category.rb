class Category < ApplicationRecord
  has_many :transactions
  belongs_to :user
  # enum :category_type, %i[expenses incomes]
  enum :category_type, { expenses: "0", incomes: "1" }
end
