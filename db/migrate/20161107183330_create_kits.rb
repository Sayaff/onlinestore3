class CreateKits < ActiveRecord::Migration
  def change
    create_table :kits do |t|
      t.string :title
      t.string :containment
      t.decimal :price
      t.text :description

      t.timestamps null: false
    end
  end
end