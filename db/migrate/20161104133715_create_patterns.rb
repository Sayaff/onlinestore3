class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :title
      t.text :description
      t.string :designer
      t.decimal :price
      t.string :category

      t.timestamps null: false
    end
  end
end
