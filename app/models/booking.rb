class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pet_home

  validates :start_date, presence: true, comparison: { greater_than: :end_date }
  validates :end_date, presence: true, comparison: { less_than: :start_date }
  validates :number_of_guest, presence: true, numericality: { only_integer: true }
end
