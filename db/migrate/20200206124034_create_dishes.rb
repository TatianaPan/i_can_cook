class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :duration

      t.timestamps
    end
  end
end
