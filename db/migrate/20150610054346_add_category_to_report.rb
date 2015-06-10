class AddCategoryToReport < ActiveRecord::Migration
  def change
    add_column :reports, :category, :integer, default: 1
  end
end
