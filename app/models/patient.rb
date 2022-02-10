class Patient < ApplicationRecord
  # A plusieurs rdv
  has_many :appointments
  # A plusieurs médecins, à travers appointments
  has_many :doctors, through: :appointments
end
