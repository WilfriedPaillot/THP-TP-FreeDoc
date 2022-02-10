# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

doctors = []
patients = []
cities = []
doctor_specialities = []
appointments = []
specialities =[]

30.times do |x|
	cities << City.create(city_name: Faker::Address.city)
end

30.times do |x|
  doctors << Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: rand(01000..95000), city_id: cities[rand(0..29)].id)
end

30.times do |x|
	patients << Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: cities[rand(0..29)].id)
end

30.times do |x|
  appointments << Appointment.create(date: Faker::Date.between(from: '2022-02-11', to: '2022-02-28'),doctor_id: doctors[rand(0..29)].id, patient_id: patients[rand(0..29)].id, city_id: cities[rand(0..29)].id)
end

4.times do |x|
  specialities << Speciality.create(name: ["Généraliste", "Kinésithérapeute", "Gynécologue", "Dentiste"][x-1])
end

30.times do |x|
  doctor_specialities << DoctorSpeciality.create(doctor_id: doctors[rand(0..29)].id, speciality_id: specialities[rand(0..3)].id)
end