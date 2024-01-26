class AnalyticsController < ApplicationController
  def index 
    @meal_data = current_user.meals.group(:date).sum(:calories)
    @workout_data = current_user.workouts.group(:date).sum(:minutes)
  end
end
