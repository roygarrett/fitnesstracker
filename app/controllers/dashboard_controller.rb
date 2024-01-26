class DashboardController < ApplicationController
  def index
    @workouts = current_user.workouts
    @meals = current_user.meals
  end
end
