class CreateLaborals < ActiveRecord::Migration[6.1]
  def change
    create_table :laborals do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4
      t.integer :q5
      t.integer :q6
      t.integer :q7
      t.integer :q8
      t.integer :q9
      t.integer :q10
      t.integer :q11
      t.integer :q12

      t.timestamps
    end
  end
end
