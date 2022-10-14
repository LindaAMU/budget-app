class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.decimal :amount
      t.enum :account_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
