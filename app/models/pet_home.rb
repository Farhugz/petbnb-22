class PetHome < ApplicationRecord
  belongs_to :user

  validates :location, :pet_type, :capacity, :name, :description, :responsibilities, :emergency_info, presence: true

  validates :location, uniqueness: true
end
