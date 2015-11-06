class AddSourceToReports < ActiveRecord::Migration
  def change
    add_column :reports, :source, :string
  end
end
