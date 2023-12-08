class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.date :date
      t.string :name
      t.integer :calories

      t.timestamps
    end
  end
end
