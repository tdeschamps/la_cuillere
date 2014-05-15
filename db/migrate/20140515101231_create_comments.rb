class CreateComments < ActiveRecord::Migration

  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.references :restaurant

      t.timestamps
    end
  end
end
