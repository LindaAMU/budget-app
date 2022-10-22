class Account < ApplicationRecord
  enum :account_type, { account: 0, debt: 1 }
  belongs_to :user
  has_many :transactions, dependent: :destroy
end
