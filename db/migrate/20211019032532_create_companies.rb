class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :nit
      t.string :name
      t.string :account_type

      t.timestamps
    end
  end
end
