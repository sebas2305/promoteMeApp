class AddFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_reference :users, :company, null: false, foreign_key: true
    add_column :users, :sex, :string
  end
end
