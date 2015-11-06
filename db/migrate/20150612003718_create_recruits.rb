class CreateRecruits < ActiveRecord::Migration
  def change
    create_table :recruits do |t|
      t.string  :position
      t.string  :address
      t.integer  :quantity
      t.text :content
      t.timestamps null: false
    end
  end
end
