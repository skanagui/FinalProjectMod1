class CreateAppointmentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :status
    end 
      
  end
end
