

ActiveRecord::Schema.define(version: 20170420221152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"



  create_table "matches", force: :cascade do |t|
    t.date     "day"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "first_student_id"
    t.string   "second_student_id"
  end

  create_table "matches_users", id: false, force: :cascade do |t|
    t.integer "user_id",  null: false
    t.integer "match_id", null: false
    t.index ["match_id", "user_id"], name: "index_matches_users_on_match_id_and_user_id", using: :btree
    t.index ["user_id", "match_id"], name: "index_matches_users_on_user_id_and_match_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "is_admin",               default: false
    t.string   "name"
    t.boolean  "no_teammate",            default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
