class RemoveCategoriesReferenceFromTransactions < ActiveRecord::Migration[7.0]
  def change
    remove_reference :transactions, :categories, index: true, foreign_key: true
  end
end
