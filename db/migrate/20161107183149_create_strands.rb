class CreateStrands < ActiveRecord::Migration
  def change
    create_table :strands do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :length
      t.string :color

      t.timestamps null: false
    end
  end
end
