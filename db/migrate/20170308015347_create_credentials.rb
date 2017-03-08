class CreateCredentials < ActiveRecord::Migration[5.0]
  def change
    create_table :credentials do |t|
      t.string :name
      t.string :cer_number
      t.integer :score
      t.string :cer_type
      t.date :start_date
      t.date :end_date
      t.string :identity_number

      t.timestamps
    end
  end
end
