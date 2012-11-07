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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121017184150) do

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "manager"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sotrudnikis", :force => true do |t|
    t.integer  "tab_number"
    t.string   "name"
    t.string   "short_name"
    t.string   "username"
    t.string   "email"
    t.string   "district"
    t.string   "job"
    t.string   "adress"
    t.string   "telephone"
    t.boolean  "access"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ustroystvas", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "department"
    t.string   "worker"
    t.string   "invent_number"
    t.string   "district"
    t.string   "cost"
    t.date     "date_intranse"
    t.date     "date_of_introduce"
    t.boolean  "object_operation"
    t.date     "operation_date"
    t.date     "date_off"
    t.string   "amortization"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
