class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :manufacturer
      t.string :image_url

      t.timestamps null: false
    end
  end
end
