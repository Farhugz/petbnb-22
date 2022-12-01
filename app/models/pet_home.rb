class PetHome < ApplicationRecord
  belongs_to :user

  validates :location, :pet_type, :capacity, :name, :description, :responsibilities, :emergency_info, presence: true
  validates :location, uniqueness: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
