class WorkoutType < ApplicationRecord
  has_many :workouts
  has_many :exercises
end
