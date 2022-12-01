class AddCoordinatesToPetHomes < ActiveRecord::Migration[7.0]
  def change
    add_column :pet_homes, :latitude, :float
    add_column :pet_homes, :longitude, :float
  end
end
