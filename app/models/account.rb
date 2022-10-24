class Account < ApplicationRecord
  enum :account_type, { account: 0, debt: 1 }
  belongs_to :user
  has_many :transactions, dependent: :destroy
  validates :name, presence: true
  validates :amount, presence: true
  validates :account_type, presence: true
end
