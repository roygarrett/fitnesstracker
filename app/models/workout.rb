class Workout < ApplicationRecord
  belongs_to :workout_type
  belongs_to :user
end
