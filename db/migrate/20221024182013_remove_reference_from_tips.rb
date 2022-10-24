class RemoveReferenceFromTips < ActiveRecord::Migration[7.0]
  def change
    remove_reference :tips, :user, null: false, foreign_key: true
  end
end
