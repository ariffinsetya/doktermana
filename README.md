# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.7.0
* System dependencies
bundler 2.1.4
* Configuration
* Database creation
RAILS_ENV=development rails db:migrate
RAILS_ENV=test rails db:migrate
rails db:seed
* Database initialization

* How to run the test suite
rspec

# doktermana
* Features
Login And Sign in via email, password OR Google Account
You can sign up/in using the email and password, and it will be registered immediately
You also can sign up/in using Google
All new users will be registered as 'Patient' type User, which limit their action to only Booking appointment with Doctor

You can change the user type via Users Menu, when you login as 'Admin'/'Doctor' type user
You can use any user which available in the seed, all user have '12345678' as password

You can create/edit/see all hospitals in Hospitals Menu
You can create/edit/see all doctor in Doctors Menu
To associate a Doctor with a Hospital you can use the Employment Menu, 
    when you create a new employment data, only Doctor with no Employment can be employed (this is limited by design on the logic, can be 
    changed n to n relationship easily)
You can see all scheduled appointments in Schedule Appointments Menu, which will list all schedule, doctor, and patient related

If you login as 'Patient' you only have 2 Menu:
    Booking
    My Bookings
You can book an appointment with a Doctor with Booking Menu, it will list all available schedule which will generated using DoctorShift data
You can see your bookings, on My Bookings
You can only book an appointment when you book at least 30 minutes before the schedule start time
When you book a schedule, you can be rejected if the doctor already have 10 patients

