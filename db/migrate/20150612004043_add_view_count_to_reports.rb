class AddViewCountToReports < ActiveRecord::Migration
  def change
    add_column :reports, :view_count, :integer
  end
end
