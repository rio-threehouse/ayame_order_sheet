class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.string :tel, null: false
      t.string :mail, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
