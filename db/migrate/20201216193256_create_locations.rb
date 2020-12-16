class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :type
      t.string :name
      t.text :description
      t.boolean :visited

      t.timestamps
    end
    add_index :locations, :name
  end
end
