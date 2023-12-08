class ExercisesController < ApplicationController
  before_action :set_workout_type
  before_action :set_exercise, only: %i[ show edit update destroy ]

  # GET /exercises or /exercises.json
  def index
    @exercises = @workout_type.exercises
  end

  # GET /exercises/1 or /exercises/1.json
  def show
  end

  # GET /exercises/new
  def new
    @exercise = @workout_type.exercises.new
  end

  # GET /exercises/1/edit
  def edit
  end

  # POST /exercises or /exercises.json
  def create
    @exercise = @workout_type.exercises.new(exercise_params)

    respond_to do |format|
      if @exercise.save
        format.html { redirect_to workout_type_exercise_url(@workout_type, @exercise), notice: "Exercise was successfully created." }
        format.json { render :show, status: :created, location: @exercise }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercises/1 or /exercises/1.json
  def update
    respond_to do |format|
      if @exercise.update(exercise_params)
        format.html { redirect_to workout_type_exercise_url(@workout_type, @exercise), notice: "Exercise was successfully updated." }
        format.json { render :show, status: :ok, location: @exercise }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercises/1 or /exercises/1.json
  def destroy
    @exercise.destroy

    respond_to do |format|
      format.html { redirect_to workout_type_exercises_url(@workout_type), notice: "Exercise was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_workout_type
      @workout_type = WorkoutType.find(params[:workout_type_id])
    end
    
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exercise_params
      params.require(:exercise).permit(:name, :reps_sets, :workout_type_id)
    end
end
