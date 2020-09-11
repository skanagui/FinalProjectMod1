

Barber.destroy_all
#Barbershop.destroy_all




#### Users

seyi = User.create(name: "Seyi")
sam  = User.create(name:  "Sam")

####  (name) 




#### Barbers

jamal    = Barber.create(name: "Jamal",    experience:  3)
jeronimo = Barber.create(name: "Jeronimo", experience:  7)
sidney   = Barber.create(name: "Sidney",   experience:  3)
wendy    = Barber.create(name: "Wendy",    experience:  2)
zora     = Barber.create(name: "Zora",     experience: 16)

####  (name, experience) 




# #### Barbershops


# shop1 = Barbershop.create(name: "Shop A", rating: 4)
# shop2 = Barbershop.create(name: "Shop B", rating: 3)
# shop3 = Barbershop.create(name: "Shop C", rating: 4)
# shop4 = Barbershop.create(name: "Shop D", rating: 5)

# ####  (name, rating)




#### Appointments

appo1 = Appointment.create(status: "Booked", user_id: 1, barber_id: 2)     #,     user,    jamal)
appo2 = Appointment.create(status: "Booked")     #,     user, jeronimo)
appo3 = Appointment.create(status: "Booked")     #,     user, jeronimo)
appo4 = Appointment.create(status: "Booked")     #,     user,    wendy)
appo5 = Appointment.create(status: "Not Booked") #, user,     zora)
# appo6 = Appointment.create(status: "Booked")

####  (IS BOOKED?)          ## user, barber)
