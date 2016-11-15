class CreateFabrics < ActiveRecord::Migration
  def change
    create_table :fabrics do |t|
      t.string :title
      t.string :manufacturer
      t.string :color
      t.decimal :price
      t.string :size
      t.string :image_url

      t.timestamps null: false
    end
  end
end
