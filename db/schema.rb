# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_01_26_000733) do
  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.integer "workout_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reps_sets"
    t.index ["workout_type_id"], name: "index_exercises_on_workout_type_id"
  end

  create_table "meals", force: :cascade do |t|
    t.date "date"
    t.string "name"
    t.integer "calories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_meals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workout_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "workout_type_id"
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_workout_types_on_user_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.date "date"
    t.integer "minutes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "workout_type_id", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_workouts_on_user_id"
    t.index ["workout_type_id"], name: "index_workouts_on_workout_type_id"
  end

  add_foreign_key "exercises", "workout_types"
  add_foreign_key "meals", "users"
  add_foreign_key "workout_types", "users"
  add_foreign_key "workouts", "users"
  add_foreign_key "workouts", "workout_types"
end
