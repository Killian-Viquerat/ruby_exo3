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

ActiveRecord::Schema.define(version: 2020_04_02_073101) do

  create_table "event_participants", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "user_id"
    t.index ["event_id"], name: "index_event_participants_on_event_id"
    t.index ["user_id"], name: "index_event_participants_on_user_id"
  end

  create_table "events", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "created_by_id"
    t.bigint "created_for_id"
    t.datetime "begin"
    t.datetime "end"
    t.index ["created_by_id"], name: "index_events_on_created_by_id"
    t.index ["created_for_id"], name: "index_events_on_created_for_id"
  end

  create_table "group_participants", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "group_id"
    t.bigint "user_id"
    t.index ["group_id"], name: "index_group_participants_on_group_id"
    t.index ["user_id"], name: "index_group_participants_on_user_id"
  end

  create_table "group_rights", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "group_id"
    t.string "reservable_type"
    t.bigint "reservable_id"
    t.index ["group_id"], name: "index_group_rights_on_group_id"
    t.index ["reservable_type", "reservable_id"], name: "index_group_rights_on_reservable_type_and_reservable_id"
  end

  create_table "groups", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 20
  end

  create_table "material_responsibles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "material_id"
    t.index ["material_id"], name: "index_material_responsibles_on_material_id"
    t.index ["user_id"], name: "index_material_responsibles_on_user_id"
  end

  create_table "materials", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 50
  end

  create_table "reservation_items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "reservation_id"
    t.string "reservable_type"
    t.bigint "reservable_id"
    t.index ["reservable_type", "reservable_id"], name: "index_reservation_items_on_reservable_type_and_reservable_id"
    t.index ["reservation_id"], name: "index_reservation_items_on_reservation_id"
  end

  create_table "reservations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "created_by_id"
    t.bigint "created_for_id"
    t.datetime "begin"
    t.datetime "end"
    t.index ["created_by_id"], name: "index_reservations_on_created_by_id"
    t.index ["created_for_id"], name: "index_reservations_on_created_for_id"
  end

  create_table "rooms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 20
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "mail", limit: 30
  end

  create_table "vehicles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 20
    t.string "brand", limit: 50
    t.string "path"
  end

end
