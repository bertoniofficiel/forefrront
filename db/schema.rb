# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_10_040022) do

  create_table "aud_cpis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "aud_id", null: false
    t.index ["aud_id"], name: "index_aud_cpis_on_aud_id"
  end

  create_table "aud_gdps", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "aud_id", null: false
    t.index ["aud_id"], name: "index_aud_gdps_on_aud_id"
  end

  create_table "aud_inflations", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "aud_id", null: false
    t.index ["aud_id"], name: "index_aud_inflations_on_aud_id"
  end

  create_table "aud_interests", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "aud_id", null: false
    t.index ["aud_id"], name: "index_aud_interests_on_aud_id"
  end

  create_table "aud_pmis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "aud_id", null: false
    t.index ["aud_id"], name: "index_aud_pmis_on_aud_id"
  end

  create_table "aud_tradebalances", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "aud_id", null: false
    t.index ["aud_id"], name: "index_aud_tradebalances_on_aud_id"
  end

  create_table "aud_unemployments", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "aud_id", null: false
    t.index ["aud_id"], name: "index_aud_unemployments_on_aud_id"
  end

  create_table "auds", force: :cascade do |t|
    t.integer "grade"
    t.integer "cot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cad_cpis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cad_id", null: false
    t.index ["cad_id"], name: "index_cad_cpis_on_cad_id"
  end

  create_table "cad_gdps", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cad_id", null: false
    t.index ["cad_id"], name: "index_cad_gdps_on_cad_id"
  end

  create_table "cad_inflations", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cad_id", null: false
    t.index ["cad_id"], name: "index_cad_inflations_on_cad_id"
  end

  create_table "cad_interests", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cad_id", null: false
    t.index ["cad_id"], name: "index_cad_interests_on_cad_id"
  end

  create_table "cad_pmis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cad_id", null: false
    t.index ["cad_id"], name: "index_cad_pmis_on_cad_id"
  end

  create_table "cad_tradebalances", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cad_id", null: false
    t.index ["cad_id"], name: "index_cad_tradebalances_on_cad_id"
  end

  create_table "cad_unemployments", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cad_id", null: false
    t.index ["cad_id"], name: "index_cad_unemployments_on_cad_id"
  end

  create_table "cads", force: :cascade do |t|
    t.integer "grade"
    t.integer "cot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chf_cpis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "chf_id", null: false
    t.index ["chf_id"], name: "index_chf_cpis_on_chf_id"
  end

  create_table "chf_gdps", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "chf_id", null: false
    t.index ["chf_id"], name: "index_chf_gdps_on_chf_id"
  end

  create_table "chf_inflations", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "chf_id", null: false
    t.index ["chf_id"], name: "index_chf_inflations_on_chf_id"
  end

  create_table "chf_interests", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "chf_id", null: false
    t.index ["chf_id"], name: "index_chf_interests_on_chf_id"
  end

  create_table "chf_pmis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "chf_id", null: false
    t.index ["chf_id"], name: "index_chf_pmis_on_chf_id"
  end

  create_table "chf_tradebalances", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "chf_id", null: false
    t.index ["chf_id"], name: "index_chf_tradebalances_on_chf_id"
  end

  create_table "chf_unemployments", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "chf_id", null: false
    t.index ["chf_id"], name: "index_chf_unemployments_on_chf_id"
  end

  create_table "chfs", force: :cascade do |t|
    t.integer "grade"
    t.integer "cot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "eur_cpis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "eur_id", null: false
    t.index ["eur_id"], name: "index_eur_cpis_on_eur_id"
  end

  create_table "eur_gdps", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "eur_id", null: false
    t.index ["eur_id"], name: "index_eur_gdps_on_eur_id"
  end

  create_table "eur_inflations", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "eur_id", null: false
    t.index ["eur_id"], name: "index_eur_inflations_on_eur_id"
  end

  create_table "eur_interests", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "eur_id", null: false
    t.index ["eur_id"], name: "index_eur_interests_on_eur_id"
  end

  create_table "eur_pmis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "eur_id", null: false
    t.index ["eur_id"], name: "index_eur_pmis_on_eur_id"
  end

  create_table "eur_tradebalances", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "eur_id", null: false
    t.index ["eur_id"], name: "index_eur_tradebalances_on_eur_id"
  end

  create_table "eur_unemployments", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "eur_id", null: false
    t.index ["eur_id"], name: "index_eur_unemployments_on_eur_id"
  end

  create_table "eurs", force: :cascade do |t|
    t.integer "grade"
    t.integer "cot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gbp_cpis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gbp_id", null: false
    t.index ["gbp_id"], name: "index_gbp_cpis_on_gbp_id"
  end

  create_table "gbp_gdps", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gbp_id", null: false
    t.index ["gbp_id"], name: "index_gbp_gdps_on_gbp_id"
  end

  create_table "gbp_inflations", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gbp_id", null: false
    t.index ["gbp_id"], name: "index_gbp_inflations_on_gbp_id"
  end

  create_table "gbp_interests", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gbp_id", null: false
    t.index ["gbp_id"], name: "index_gbp_interests_on_gbp_id"
  end

  create_table "gbp_pmis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gbp_id", null: false
    t.index ["gbp_id"], name: "index_gbp_pmis_on_gbp_id"
  end

  create_table "gbp_tradebalances", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gbp_id", null: false
    t.index ["gbp_id"], name: "index_gbp_tradebalances_on_gbp_id"
  end

  create_table "gbp_unemployments", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gbp_id", null: false
    t.index ["gbp_id"], name: "index_gbp_unemployments_on_gbp_id"
  end

  create_table "gbps", force: :cascade do |t|
    t.integer "grade"
    t.integer "cot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jpies", force: :cascade do |t|
    t.integer "grade"
    t.integer "cot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jpy_cpis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "jpy_id", null: false
    t.index ["jpy_id"], name: "index_jpy_cpis_on_jpy_id"
  end

  create_table "jpy_gdps", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "jpy_id", null: false
    t.index ["jpy_id"], name: "index_jpy_gdps_on_jpy_id"
  end

  create_table "jpy_inflations", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "jpy_id", null: false
    t.index ["jpy_id"], name: "index_jpy_inflations_on_jpy_id"
  end

  create_table "jpy_interests", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "jpy_id", null: false
    t.index ["jpy_id"], name: "index_jpy_interests_on_jpy_id"
  end

  create_table "jpy_pmis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "jpy_id", null: false
    t.index ["jpy_id"], name: "index_jpy_pmis_on_jpy_id"
  end

  create_table "jpy_tradebalances", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "jpy_id", null: false
    t.index ["jpy_id"], name: "index_jpy_tradebalances_on_jpy_id"
  end

  create_table "jpy_unemployments", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "jpy_id", null: false
    t.index ["jpy_id"], name: "index_jpy_unemployments_on_jpy_id"
  end

  create_table "nzd_cpis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "nzd_id", null: false
    t.index ["nzd_id"], name: "index_nzd_cpis_on_nzd_id"
  end

  create_table "nzd_gdps", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "nzd_id", null: false
    t.index ["nzd_id"], name: "index_nzd_gdps_on_nzd_id"
  end

  create_table "nzd_inflations", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "nzd_id", null: false
    t.index ["nzd_id"], name: "index_nzd_inflations_on_nzd_id"
  end

  create_table "nzd_interests", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "nzd_id", null: false
    t.index ["nzd_id"], name: "index_nzd_interests_on_nzd_id"
  end

  create_table "nzd_pmis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "nzd_id", null: false
    t.index ["nzd_id"], name: "index_nzd_pmis_on_nzd_id"
  end

  create_table "nzd_tradebalances", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "nzd_id", null: false
    t.index ["nzd_id"], name: "index_nzd_tradebalances_on_nzd_id"
  end

  create_table "nzd_unemployments", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "nzd_id", null: false
    t.index ["nzd_id"], name: "index_nzd_unemployments_on_nzd_id"
  end

  create_table "nzds", force: :cascade do |t|
    t.integer "grade"
    t.integer "cot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usd_cpis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "usd_id", null: false
    t.index ["usd_id"], name: "index_usd_cpis_on_usd_id"
  end

  create_table "usd_gdps", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "usd_id", null: false
    t.index ["usd_id"], name: "index_usd_gdps_on_usd_id"
  end

  create_table "usd_inflations", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "usd_id", null: false
    t.index ["usd_id"], name: "index_usd_inflations_on_usd_id"
  end

  create_table "usd_interests", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "usd_id", null: false
    t.index ["usd_id"], name: "index_usd_interests_on_usd_id"
  end

  create_table "usd_pmis", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "usd_id", null: false
    t.index ["usd_id"], name: "index_usd_pmis_on_usd_id"
  end

  create_table "usd_tradebalances", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "usd_id", null: false
    t.index ["usd_id"], name: "index_usd_tradebalances_on_usd_id"
  end

  create_table "usd_unemployments", force: :cascade do |t|
    t.date "releasedate"
    t.float "actual"
    t.float "forecast"
    t.float "previous"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "usd_id", null: false
    t.index ["usd_id"], name: "index_usd_unemployments_on_usd_id"
  end

  create_table "usds", force: :cascade do |t|
    t.integer "grade"
    t.integer "cot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "aud_cpis", "auds"
  add_foreign_key "aud_gdps", "auds"
  add_foreign_key "aud_inflations", "auds"
  add_foreign_key "aud_interests", "auds"
  add_foreign_key "aud_pmis", "auds"
  add_foreign_key "aud_tradebalances", "auds"
  add_foreign_key "aud_unemployments", "auds"
  add_foreign_key "cad_cpis", "cads"
  add_foreign_key "cad_gdps", "cads"
  add_foreign_key "cad_inflations", "cads"
  add_foreign_key "cad_interests", "cads"
  add_foreign_key "cad_pmis", "cads"
  add_foreign_key "cad_tradebalances", "cads"
  add_foreign_key "cad_unemployments", "cads"
  add_foreign_key "chf_cpis", "chfs"
  add_foreign_key "chf_gdps", "chfs"
  add_foreign_key "chf_inflations", "chfs"
  add_foreign_key "chf_interests", "chfs"
  add_foreign_key "chf_pmis", "chfs"
  add_foreign_key "chf_tradebalances", "chfs"
  add_foreign_key "chf_unemployments", "chfs"
  add_foreign_key "eur_cpis", "eurs"
  add_foreign_key "eur_gdps", "eurs"
  add_foreign_key "eur_inflations", "eurs"
  add_foreign_key "eur_interests", "eurs"
  add_foreign_key "eur_pmis", "eurs"
  add_foreign_key "eur_tradebalances", "eurs"
  add_foreign_key "eur_unemployments", "eurs"
  add_foreign_key "gbp_cpis", "gbps"
  add_foreign_key "gbp_gdps", "gbps"
  add_foreign_key "gbp_inflations", "gbps"
  add_foreign_key "gbp_interests", "gbps"
  add_foreign_key "gbp_pmis", "gbps"
  add_foreign_key "gbp_tradebalances", "gbps"
  add_foreign_key "gbp_unemployments", "gbps"
  add_foreign_key "jpy_cpis", "jpies"
  add_foreign_key "jpy_gdps", "jpies"
  add_foreign_key "jpy_inflations", "jpies"
  add_foreign_key "jpy_interests", "jpies"
  add_foreign_key "jpy_pmis", "jpies"
  add_foreign_key "jpy_tradebalances", "jpies"
  add_foreign_key "jpy_unemployments", "jpies"
  add_foreign_key "nzd_cpis", "nzds"
  add_foreign_key "nzd_gdps", "nzds"
  add_foreign_key "nzd_inflations", "nzds"
  add_foreign_key "nzd_interests", "nzds"
  add_foreign_key "nzd_pmis", "nzds"
  add_foreign_key "nzd_tradebalances", "nzds"
  add_foreign_key "nzd_unemployments", "nzds"
  add_foreign_key "usd_cpis", "usds"
  add_foreign_key "usd_gdps", "usds"
  add_foreign_key "usd_inflations", "usds"
  add_foreign_key "usd_interests", "usds"
  add_foreign_key "usd_pmis", "usds"
  add_foreign_key "usd_tradebalances", "usds"
  add_foreign_key "usd_unemployments", "usds"
end
