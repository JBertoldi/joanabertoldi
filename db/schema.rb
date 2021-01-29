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

ActiveRecord::Schema.define(version: 2021_01_28_225129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commits", force: :cascade do |t|
    t.string "message"
    t.string "html_url"
    t.bigint "repo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["repo_id"], name: "index_commits_on_repo_id"
  end

  create_table "dashboards", force: :cascade do |t|
    t.integer "contributions"
    t.integer "repos_count"
    t.bigint "joana_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["joana_id"], name: "index_dashboards_on_joana_id"
  end

  create_table "joanas", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "location"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "repos", force: :cascade do |t|
    t.string "name"
    t.string "html_url"
    t.integer "commits_count"
    t.bigint "joana_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["joana_id"], name: "index_repos_on_joana_id"
  end

  add_foreign_key "commits", "repos"
  add_foreign_key "dashboards", "joanas"
  add_foreign_key "repos", "joanas"
end
