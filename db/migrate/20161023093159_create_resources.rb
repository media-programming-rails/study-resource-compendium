class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.text :description
      t.string :category_id
      t.string :link
      t.date :last_modified

      t.timestamps null: false
    end
  end
end
