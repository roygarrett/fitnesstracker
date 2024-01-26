class AddUserReferenceToWorkoutTypes < ActiveRecord::Migration[7.0]
  def change
    add_reference :workout_types, :user, null: false, foreign_key: true
  end
end
