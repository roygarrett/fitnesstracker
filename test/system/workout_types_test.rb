require "application_system_test_case"

class WorkoutTypesTest < ApplicationSystemTestCase
  setup do
    @workout_type = workout_types(:one)
  end

  test "visiting the index" do
    visit workout_types_url
    assert_selector "h1", text: "Workout types"
  end

  test "should create workout type" do
    visit workout_types_url
    click_on "New workout type"

    fill_in "Name", with: @workout_type.name
    click_on "Create Workout type"

    assert_text "Workout type was successfully created"
    click_on "Back"
  end

  test "should update Workout type" do
    visit workout_type_url(@workout_type)
    click_on "Edit this workout type", match: :first

    fill_in "Name", with: @workout_type.name
    click_on "Update Workout type"

    assert_text "Workout type was successfully updated"
    click_on "Back"
  end

  test "should destroy Workout type" do
    visit workout_type_url(@workout_type)
    click_on "Destroy this workout type", match: :first

    assert_text "Workout type was successfully destroyed"
  end
end
