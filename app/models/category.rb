class Category < ApplicationRecord
  has_many :transactions
  belongs_to :user
  enum :category_type, %i[expenses incomes]
  # enum :category_type, { expenses: "0", incomes: "1" }
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: true
  validates :category_type, presence: true
end
