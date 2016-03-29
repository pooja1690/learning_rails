class CreateUserWithHalls < ActiveRecord::Migration
  def change
    create_table :user_with_halls do |t|
      t.string :email
      t.integer :Hall_ID

      t.timestamps null: false
    end
  end
end
