ActiveRecord::Schema.define(version: 20170510035628) do
  create_table "notifications", force: :cascade do |t|
    t.string "uid"
    t.string "message"
    t.string "title"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
