class Patient < ApplicationRecord
  # A plusieurs rdv
  has_many :appointments, dependent: :destroy
  # A plusieurs médecins, à travers appointments
  has_many :doctors, through: :appointments
  belongs_to: city
end
