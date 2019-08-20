class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :number, null: false
      t.string :name, null: false
      t.string :color_1, null: false
      t.string :color_2
      t.string :color_3
      t.string :color_4
      t.string :size_1, null: false
      t.string :size_2
      t.string :size_3
      t.string :size_4
      t.integer :price, null: false

      t.timestamps
    end
  end
end
