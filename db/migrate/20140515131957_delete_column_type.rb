class DeleteColumnType < ActiveRecord::Migration
  def up
    remove_column :restaurants, :type
  end
end
