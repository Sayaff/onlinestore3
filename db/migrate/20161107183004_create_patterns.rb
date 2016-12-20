class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :title
      t.text :description
      t.decimal :price_usd
      t.decimal :price_rub
      t.string :designer
      t.string :size
      t.string :category

      t.timestamps null: false
    end
  end
end
