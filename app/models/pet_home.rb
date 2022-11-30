class PetHome < ApplicationRecord
  belongs_to :user

<<<<<<< HEAD
  validates :location, :pet_type, :responsibilities, :capacity, :name,
            :description, :emergency_info, presence: true
=======
  validates :location, :pet_type, :capacity, :name, :description, :responsibilities, :emergency_info, presence: true

>>>>>>> b0b6d2485ac9b4b481b69085c2fd6a07ba55f80d
  validates :location, uniqueness: true
end
