class CreateBarberstylesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :barberstyles do |t|
      t.string :name 
      t.integer :price
    end 
  end
end
