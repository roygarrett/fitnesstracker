class AnalyticsController < ApplicationController
  def index 
    @meal_data = Meal.group(:date).sum(:calories)
    @workout_data = Workout.group(:date).sum(:minutes)
  end
end
