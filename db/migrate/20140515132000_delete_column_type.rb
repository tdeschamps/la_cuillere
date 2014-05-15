class DeleteColumnType < ActiveRecord::Migration
  def change
    remove_column :restaurants, :type
  end
end
