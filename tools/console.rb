
require_relative '../config/environment'

# instances to test code go here

bob = Doctor.new("Dr. Bob", "Generalist")
jan = Doctor.new("Dr. Jan", "Surgeon")

pat1 = Patient.new("Billy Bob")
pat2 = Patient.new("Jilly Billy")
pat3 = Patient.new("Amelia Bedilia")

Appointment.new("2/3/2020", 5, bob, pat1)
Appointment.new("2/7/2020", 10, bob, pat2)
Appointment.new("2/22/2020", 1, bob, pat1)
Appointment.new("2/7/2020", 8, jan, pat3)
Appointment.new("2/3/2020", 7, jan, pat1)
Appointment.new("2/3/2020", 2, jan, pat2)
Appointment.new("2/3/2020", 8, jan, pat3)

bob.appointments
pat1.appointments
pat1.doctors

binding.pry