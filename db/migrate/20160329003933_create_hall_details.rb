class CreateHallDetails < ActiveRecord::Migration
  def change
    create_table :hall_details do |t|
      t.string :Hall_Name
      t.string :Hall_ID
      t.string :Hall_Type
      t.string :Phone_Number
      t.string :Contact_Email
      t.string :Address
      t.string :City
      t.string :State

      t.timestamps null: false
    end
  end
end
