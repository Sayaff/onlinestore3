class CreateKits < ActiveRecord::Migration
  def change
    create_table :kits do |t|
      t.string :title
      t.text :description
      t.string :containment
      t.decimal :price

      t.timestamps null: false
    end
  end
end
