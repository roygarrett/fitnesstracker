# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
default_workout_types = [
  { :name => "Chest" },
  { :name => "Arms" },
  { :name => "Back" },
  { :name => "Legs" }
]

default_workout_types.each do |workout_type|
  WorkoutType.create(workout_type)
end

chest = ["Bench Press", "Dumbbell Press", "Chest Flys"]
arms = ["Bicep Curls", "Tricep Extension", "Forearm Curls"]
back = ["Dumbbell Rows", "Deadlifts", "Reverse Flys"]
legs = ["Barbell Squats", "Leg Press", "Calf Raises"]

workout_types = WorkoutType.all

workout_types.each do |workout_type|
  exercises = []

  case workout_type.name
  when "Chest"
    exercises = chest
  when "Arms"
    exercises = arms
  when "Back"
    exercises = back
  when "Legs"
    exercises = legs
  end

  exercises.each do |exercise_name|
    workout_type.exercises.create(
      :name => exercise_name,
      :reps_sets => "#{rand(1..4)}/#{rand(5..10)}"
    )
  end
end

User.create(
  {
    :email => "admin@fitness.local",
    :password => "Pass1234"
  }
)

food = ["Pizza", "Waffles", "Burger", "Eggs Benedict", "Protein Bar"]
(1..14).each do |num|
  3.times do
    Meal.create(
      {
        :date => Date.today - num.days,
        :name => food.sample,
        :calories => rand(250..1500)
      }
    )
  end
end

(1..14).each do |num|
  Workout.create(
    {
      :date => Date.today - num.days,
      :workout_type => WorkoutType.all.sample,
      :minutes => [30, 60, 90, 120, 180].sample
    }
  )
end