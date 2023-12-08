class DashboardController < ApplicationController
  def index
    @workouts = Workout.all
    @meals = Meal.all
  end
end
