class CreateAppointmentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string  :status
      t.integer :user_id
      t.integer :barber_id
    end 
      
  end
end
