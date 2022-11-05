class Category < ApplicationRecord
  has_many :transactions, dependent: :destroy
  belongs_to :user
  enum :category_type, %i[Expenses Incomes Transfer]
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: true
  validates :category_type, presence: true
end
