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

ActiveRecord::Schema[7.0].define(version: 2023_09_16_010422) do
  create_table "drug_ingredients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "drug_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drug_id", "ingredient_id"], name: "index_drug_ingredients_on_drug_id_and_ingredient_id", unique: true
    t.index ["drug_id"], name: "index_drug_ingredients_on_drug_id"
    t.index ["ingredient_id"], name: "index_drug_ingredients_on_ingredient_id"
  end

  create_table "drug_symptoms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "drug_id"
    t.bigint "symptom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drug_id", "symptom_id"], name: "index_drug_symptoms_on_drug_id_and_symptom_id", unique: true
    t.index ["drug_id"], name: "index_drug_symptoms_on_drug_id"
    t.index ["symptom_id"], name: "index_drug_symptoms_on_symptom_id"
  end

  create_table "drugs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false, collation: "utf8mb3_general_ci", comment: "商品名"
    t.text "effect_text", collation: "utf8mb3_general_ci", comment: " 効能効果"
    t.text "usage", collation: "utf8mb3_general_ci", comment: "用法用量"
    t.string "document_url", collation: "utf8mb3_general_ci", comment: "添付文書URL"
    t.integer "formulation", comment: "剤型 -- tablet(錠剤): 0, powder(粉): 1, capsule(カプセル): 2, liquid(液剤): 3, nose(点鼻): 4", unsigned: true
    t.integer "division", comment: "リスク区分 -- to_guide(要指導医薬品): 0, one_kind(一類医薬品): 1, two_kind(二類医薬品): 2, three_kind(三類医薬品): 3, two_designate(指定二類医薬品): 4"
    t.integer "taxation", default: 0, null: false, comment: "セルフメディケーション税制"
    t.text "formula", collation: "utf8mb3_general_ci", comment: "成分分量"
    t.text "otc_text", collation: "utf8mb3_general_ci", comment: "製品の特徴"
    t.text "caution", collation: "utf8mb3_general_ci", comment: "使用上の注意"
    t.bigint "maker_name_id"
    t.index ["maker_name_id"], name: "index_drugs_on_maker_name_id"
  end

  create_table "ingredients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "drive", limit: 1, default: 1, unsigned: true
    t.integer "tobacco", limit: 1, default: 1, unsigned: true
    t.integer "alcohol", limit: 1, default: 1, unsigned: true
  end

  create_table "maker_names", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "symptoms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
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
  add_foreign_key "drugs", "maker_names"
end
