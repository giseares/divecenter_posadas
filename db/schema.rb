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

ActiveRecord::Schema.define(version: 2020_08_29_150245) do
  enable_extension 'plpgsql'

  create_table 'activities', force: :cascade do |t|
    t.integer 'sort'
    t.datetime 'start_date'
    t.string 'duration'
    t.integer 'price'
    t.string 'name_activity'
    t.string 'description'
    t.string 'location'
    t.datetime 'end_date'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'agency_id'
    t.index ['agency_id'], name: 'index_activities_on_agency_id'
  end

  create_table 'agencies', force: :cascade do |t|
    t.string 'name'
    t.string 'information'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'bookings', force: :cascade do |t|
    t.integer 'status'
    t.datetime 'booking_date'
    t.bigint 'user_id', null: false
    t.bigint 'activity_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['activity_id'], name: 'index_bookings_on_activity_id'
    t.index ['user_id'], name: 'index_bookings_on_user_id'
  end

  create_table 'certificates', force: :cascade do |t|
    t.datetime 'certified_at'
    t.bigint 'user_id', null: false
    t.bigint 'activity_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['activity_id'], name: 'index_certificates_on_activity_id'
    t.index ['user_id'], name: 'index_certificates_on_user_id'
  end

  create_table 'inquiries', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.string 'phone'
    t.string 'comment'
    t.bigint 'activity_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'tbd'
    t.index ['activity_id'], name: 'index_inquiries_on_activity_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'first_name'
    t.string 'last_name'
    t.datetime 'birthday'
    t.boolean 'admin'
    t.string 'cel_phone'
    t.integer 'height'
    t.integer 'weight'
    t.string 'size_neoprene'
    t.string 'size_shoes'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'activities', 'agencies'
  add_foreign_key 'bookings', 'activities'
  add_foreign_key 'bookings', 'users'
  add_foreign_key 'certificates', 'activities'
  add_foreign_key 'certificates', 'users'
  add_foreign_key 'inquiries', 'activities'
end
