# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin
Admin.create(name: 'admin', email: 'admin@hospital.com', uid: '2137SADKJr0202r', password: '12345678')

# Doctors
d1 = Doctor.create(name: 'dr Mike Andika', email: 'andikam@hospital.com', uid: '2137421h21r0202r', password: '12345678')
d2 = Doctor.create(name: 'dr Ani Wilana', email: 'wilanaa@hospital.com', uid: '21eh9as9s9s9s9', password: '12345678')
d3 = Doctor.create(name: 'dr Budi Hendarto', email: 'hendartob@hospital.com', uid: 'sfaff88f8f82j33', password: '12345678')
d4 = Doctor.create(name: 'dr Solihin', email: 'solihin@hospital.com', uid: 'snnisadEYFEFfdfd', password: '12345678')

# Shift
ds1 = DoctorShift.create(doctor_id: d1.id, start_hour: 9, start_min: 0, end_hour: 12, end_min: 30)
ds2 = DoctorShift.create(doctor_id: d1.id, start_hour: 15, start_min: 0, end_hour: 18, end_min: 30)
ds3 = DoctorShift.create(doctor_id: d2.id, start_hour: 9, start_min: 0, end_hour: 12, end_min: 30)
ds4 = DoctorShift.create(doctor_id: d3.id, start_hour: 7, start_min: 0, end_hour: 8, end_min: 30)
ds5 = DoctorShift.create(doctor_id: d3.id, start_hour: 10, start_min: 0, end_hour: 12, end_min: 30)
ds6 = DoctorShift.create(doctor_id: d4.id, start_hour: 9, start_min: 0, end_hour: 12, end_min: 30)

# Hospitals
h1 = Hospital.create(name: 'RS Medika Indonesia', address: 'Jalan Indonesia no 10', phone: '574885')
h2 = Hospital.create(name: 'Holy Medical', address: 'Jalan Suci no 148', phone: '443285')

# Employments
Employment.create(doctor: d1, hospital: h1)
Employment.create(doctor: d2, hospital: h2)
Employment.create(doctor: d3, hospital: h1)
Employment.create(doctor: d4, hospital: h2)

# Patients
p1 = Patient.create(name: 'Antoni Manurung', email: 'manurung.antroni@hostmail.com', uid: '21312ubf88ASFDsw', password: '12345678')
p2 = Patient.create(name: 'Hendra Wiryawan', email: 'hendraw88@hostmail.com', uid: 'wand89d9s', password: '12345678')
p3 = Patient.create(name: 'David Cheng', email: 'dcheng@hostmail.com', uid: 'sadjhsa1qwd', password: '12345678')

# Scheduled Appointment
s1 = Schedule.create(doctor: d1, start_time: DateTime.new(2020,1,1,9,0,0), end_time: DateTime.new(2020,1,1,12,30,0))
s2 = Schedule.create(doctor: d1, start_time: DateTime.new(2020,1,1,15,0,0), end_time: DateTime.new(2020,1,1,18,30,0))
s3 = Schedule.create(doctor: d2, start_time: DateTime.new(2020,1,1,9,0,0), end_time: DateTime.new(2020,1,1,12,30,0))
sa1 = ScheduledAppointment.create(doctor_id: d1.id, schedule_id: s1.id, patient_id: p1.id)
sa2 = ScheduledAppointment.create(doctor_id: d1.id, schedule_id: s2.id, patient_id: p2.id)
sa3 = ScheduledAppointment.create(doctor_id: d2.id, schedule_id: s3.id, patient_id: p3.id)