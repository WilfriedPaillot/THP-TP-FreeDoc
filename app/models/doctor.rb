class Doctor < ApplicationRecord
  # A plusieurs rdv
  has_many :appointments, dependent: :destroy
  has_many :doctor_specialities, dependent: :destroy
  # A plusieurs patients, à travers les rdv
  has_many :patients, through: :appointments
  has_many :specialities, through: :doctor_specialities
  belongs_to :city
end
