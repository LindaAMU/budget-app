class CreateTips < ActiveRecord::Migration[7.0]
  def change
    create_table :tips do |t|
      t.string :title
      t.string :message
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
