class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.text :link
      t.integer :number, default: 1

      t.timestamps null: false
    end
  end
end
