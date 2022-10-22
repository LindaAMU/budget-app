class Transaction < ApplicationRecord
  belongs_to :account
  belongs_to :category
  belongs_to :user
  enum :transaction_type, %i[income expense transfer]
end
