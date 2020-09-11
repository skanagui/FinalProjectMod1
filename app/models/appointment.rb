class Appointment < ActiveRecord::Base 

    belongs_to :user
    belongs_to :barber

end 


# ActiveRecord::Schema.define(version: 2020_09_10_134014) do

#     create_table "bookings", force: :cascade do |t|
#       t.integer "user_id"
#       t.integer "event_id"
#     end
