class AddUserReferenceToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_reference :workouts, :user, null: false, foreign_key: true
  end
end
