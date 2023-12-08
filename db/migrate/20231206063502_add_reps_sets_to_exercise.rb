class AddRepsSetsToExercise < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :reps_sets, :string
  end
end
