class CreateFabrics < ActiveRecord::Migration
  def change
    create_table :fabrics do |t|
      t.string :title
      t.string :size
      t.string :manufacturer
      t.string :type
      t.string :color
      t.text :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
