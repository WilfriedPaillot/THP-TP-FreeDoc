class Doctor < ApplicationRecord
  # A plusieurs rdv
  has_many :appointments
  # A plusieurs patients, à travers les rdv
  has_many :patients, through: :appointments
end
