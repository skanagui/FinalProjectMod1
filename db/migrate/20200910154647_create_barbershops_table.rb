class CreateBarbershopsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :barbershops do |t|
      t.string :name 
      t.integer :rating
    end
  end
end
