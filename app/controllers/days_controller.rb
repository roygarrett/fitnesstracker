class DaysController < ApplicationController
  def index
    
  end

  def show
    @day = Date.parse params[:id]
  end
end
