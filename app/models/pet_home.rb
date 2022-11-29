class PetHome < ApplicationRecord
  belongs_to :user

  validates :location, :pet_type, :responsibilities, :capacity, :name,
            :description, :emergency_info, presence: true
  validates :location, uniqueness: true
end
