class AddWorkoutTypeToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_reference :workouts, :workout_type, null: false, foreign_key: true
  end
end
