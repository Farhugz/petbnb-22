class CreatePetHomes < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_homes do |t|
      t.integer :user_id
      t.string :location
      t.string :pet_type
      t.text :responsibilities
      t.integer :capacity
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.text :emergency_info

      t.timestamps
    end
  end
end
