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

ActiveRecord::Schema[7.0].define(version: 2023_08_16_071749) do
  create_table "drug_ingredients", force: :cascade do |t|
    t.integer "drug_id"
    t.integer "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drug_id", "ingredient_id"], name: "index_drug_ingredients_on_drug_id_and_ingredient_id", unique: true
    t.index ["drug_id"], name: "index_drug_ingredients_on_drug_id"
    t.index ["ingredient_id"], name: "index_drug_ingredients_on_ingredient_id"
  end

  create_table "drug_symptoms", force: :cascade do |t|
    t.integer "drug_id"
    t.integer "symptom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drug_id", "symptom_id"], name: "index_drug_symptoms_on_drug_id_and_symptom_id", unique: true
    t.index ["drug_id"], name: "index_drug_symptoms_on_drug_id"
    t.index ["symptom_id"], name: "index_drug_symptoms_on_symptom_id"
  end

  create_table "drugs", force: :cascade do |t|
    t.string "name", null: false
    t.string "effect_text"
    t.string "usage"
    t.string "document_url"
    t.integer "formulation"
    t.integer "division"
    t.boolean "taxation", default: false, null: false
    t.integer "for_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "maker_name_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "drive", default: false, null: false
    t.boolean "tobacco", default: false, null: false
    t.boolean "alcohol", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maker_names", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "symptoms", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "drug_ingredients", "drugs"
  add_foreign_key "drug_ingredients", "ingredients"
  add_foreign_key "drug_symptoms", "drugs"
  add_foreign_key "drug_symptoms", "symptoms"
end
