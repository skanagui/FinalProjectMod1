<<<<<<< HEAD
#### Barbers

jamal    = Barber.create(name: "Jamal",    experience:  3)
jeronimo = Barber.create(name: "Jeronimo", experience:  7)
sidney   = Barber.create(name: "Sidney",   experience:  3)
wendy    = Barber.create(name: "Wendy",    experience:  2)
zora     = Barber.create(name: "Zora",     experience: 16)

####  (name, experience) 




#### Barbershops

shop1 = Barbershop.create(name: "Shop A", rating: 4)
shop2 = Barbershop.create(name: "Shop B", rating: 3)
shop3 = Barbershop.create(name: "Shop C", rating: 4)
shop4 = Barbershop.create(name: "Shop D", rating: 5)

####  (name, rating)




#### Appointments

appo1 = Appointment.create(booked: "Booked")     #,     user,    jamal)
appo2 = Appointment.create(booked: "Booked")     #,     user, jeronimo)
appo3 = Appointment.create(booked: "Booked")     #,     user, jeronimo)
appo4 = Appointment.create(booked: "Booked")     #,     user,    wendy)
appo5 = Appointment.create(booked: "Not Booked") #, user,     zora)

####  (IS BOOKED?, user, barber)
