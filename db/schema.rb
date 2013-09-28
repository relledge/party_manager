# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130928033039) do

  create_table "address_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.string   "line_1"
    t.string   "line_2"
    t.string   "city"
    t.string   "postal_code"
    t.integer  "state_id"
    t.integer  "address_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["address_type_id"], name: "index_addresses_on_address_type_id", using: :btree
  add_index "addresses", ["state_id"], name: "index_addresses_on_state_id", using: :btree

  create_table "customer_addresses", force: true do |t|
    t.integer  "customer_id"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_addresses", ["address_id"], name: "index_customer_addresses_on_address_id", using: :btree
  add_index "customer_addresses", ["customer_id"], name: "index_customer_addresses_on_customer_id", using: :btree

  create_table "customer_phones", force: true do |t|
    t.integer  "customer_id"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_phones", ["customer_id"], name: "index_customer_phones_on_customer_id", using: :btree
  add_index "customer_phones", ["phone_id"], name: "index_customer_phones_on_phone_id", using: :btree

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenses", force: true do |t|
    t.string   "description"
    t.decimal  "price"
    t.integer  "mileage"
    t.datetime "expense_date"
    t.integer  "party_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "expenses", ["party_id"], name: "index_expenses_on_party_id", using: :btree

  create_table "items", force: true do |t|
    t.string   "sku"
    t.string   "description"
    t.integer  "quantity"
    t.decimal  "price"
    t.decimal  "cost"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["order_id"], name: "index_items_on_order_id", using: :btree

  create_table "order_addresses", force: true do |t|
    t.integer  "order_id"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_addresses", ["address_id"], name: "index_order_addresses_on_address_id", using: :btree
  add_index "order_addresses", ["order_id"], name: "index_order_addresses_on_order_id", using: :btree

  create_table "orders", force: true do |t|
    t.datetime "order_date"
    t.integer  "party_customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["party_customer_id"], name: "index_orders_on_party_customer_id", using: :btree

  create_table "parties", force: true do |t|
    t.string   "description"
    t.datetime "party_date"
    t.datetime "close_date"
    t.integer  "status_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parties", ["status_type_id"], name: "index_parties_on_status_type_id", using: :btree

  create_table "party_customers", force: true do |t|
    t.boolean  "hostess_idc"
    t.integer  "party_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "party_customers", ["customer_id"], name: "index_party_customers_on_customer_id", using: :btree
  add_index "party_customers", ["party_id"], name: "index_party_customers_on_party_id", using: :btree

  create_table "phone_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.string   "phone_number"
    t.integer  "phone_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["phone_type_id"], name: "index_phones_on_phone_type_id", using: :btree

  create_table "sales_rep_addresses", force: true do |t|
    t.integer  "sales_rep_id"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales_rep_addresses", ["address_id"], name: "index_sales_rep_addresses_on_address_id", using: :btree
  add_index "sales_rep_addresses", ["sales_rep_id"], name: "index_sales_rep_addresses_on_sales_rep_id", using: :btree

  create_table "sales_rep_customers", force: true do |t|
    t.integer  "sales_rep_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales_rep_customers", ["customer_id"], name: "index_sales_rep_customers_on_customer_id", using: :btree
  add_index "sales_rep_customers", ["sales_rep_id"], name: "index_sales_rep_customers_on_sales_rep_id", using: :btree

  create_table "sales_rep_parties", force: true do |t|
    t.integer  "sales_rep_id"
    t.integer  "party_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales_rep_parties", ["party_id"], name: "index_sales_rep_parties_on_party_id", using: :btree
  add_index "sales_rep_parties", ["sales_rep_id"], name: "index_sales_rep_parties_on_sales_rep_id", using: :btree

  create_table "sales_rep_phones", force: true do |t|
    t.integer  "sales_rep_id"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales_rep_phones", ["phone_id"], name: "index_sales_rep_phones_on_phone_id", using: :btree
  add_index "sales_rep_phones", ["sales_rep_id"], name: "index_sales_rep_phones_on_sales_rep_id", using: :btree

  create_table "sales_reps", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "state_full"
    t.string   "state_abbr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
