class CreateEnviroments < ActiveRecord::Migration[6.1]
  def change
    create_table :enviroments do |t|
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
      t.integer :q13
      t.integer :q14
      t.integer :q15
      t.integer :q16
      t.integer :q17
      t.integer :q18
      t.integer :q19
      t.integer :q20
      t.integer :q21
      t.integer :q22
      t.integer :q23

      t.timestamps
    end
  end
end
