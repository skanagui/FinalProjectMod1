class CreateBarbersTable < ActiveRecord::Migration[6.0]
  def change 
    create_table :barbers do |t|
      t.string :name 
      t.integer :experience
    end 
  end
end
