class Transaction < ApplicationRecord
  belongs_to :account
  belongs_to :category
  belongs_to :user
  enum :transaction_type, %i[income expense]
  validates :reason, presence: true, length: { maximum: 30 }
  validates :transaction_type, presence: true
  validates :date, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :account_id, presence: true
  validates :category_id, presence: true
end
