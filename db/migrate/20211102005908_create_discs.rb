class CreateDiscs < ActiveRecord::Migration[6.1]
  def change
    create_table :discs do |t|
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
      t.integer :q24
      t.integer :q25
      t.integer :q26
      t.integer :q27
      t.integer :q28
      t.integer :q1n
      t.integer :q2n
      t.integer :q3n
      t.integer :q4n
      t.integer :q5n
      t.integer :q6n
      t.integer :q7n
      t.integer :q8n
      t.integer :q9n
      t.integer :q10n
      t.integer :q11n
      t.integer :q12n
      t.integer :q13n
      t.integer :q14n
      t.integer :q15n
      t.integer :q16n
      t.integer :q17n
      t.integer :q18n
      t.integer :q19n
      t.integer :q20n
      t.integer :q21n
      t.integer :q22n
      t.integer :q23n
      t.integer :q24n
      t.integer :q25n
      t.integer :q26n
      t.integer :q27n
      t.integer :q28n

      t.timestamps
    end
  end
end
