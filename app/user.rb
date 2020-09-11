
# require_relative 'appointment.rb'
# require 'tty-prompt'

class User < ActiveRecord::Base 
    has_many :appointments
    has_many :barbers, through: :appointments 


    # def self.save_user(id_to_save, user_to_save)
    #     user_to_save = User.last
    # end
    def self.login
        prompt = TTY::Prompt.new
        
        puts "Please enter your Username and Password"
        username = prompt.ask("Username: ",  required: true)
        password = prompt.mask("Password: ", required: true)

        User.create(name: username)
        active_user = username
        active_user = User.last


        # User.find_by(name: user_to_find)
    
        # active_user = User.create(name: username)
        # active_user

        # active_user.
        # save_user(active_user.id, active_user)
    end

    # def giveme_user(user_to_find)
    #     User.find_by(name: user_to_find)
    # end 

    def view_barbers
        Barber.all
    end
    def make_appointment(stat, u_id, b_id)
        next_appo = Appointment.last.id + 1
        #                         Increment
        making_this_appo = "appo" + next_appo.to_s
        #                                   Concat
        making_this_appo = Appointment.create(status: "Booked", user_id: u_id, barber_id: b_id)
        # making_this_appo
    end
    def view_appointments  #  *** 
        Appointment.all.filter{ |appo| appo.user_id == self.id }  #  ***
    end

    
# [2] pry(main)> User.login
# Please enter your Username and Password
# Username:  wandamble
# Password:  •
# => #<User:0x00007f8e54def6e0 id: 14, name: "wandamble">

# [3] pry(main)> wandamble = User.last
# => #<User:0x00007f8e54e16178 id: 14, name: "wandamble">


# [4] pry(main)> appo5 = Appointment.last
# => #<Appointment:0x00007f8e5514df58 id: 10, status: "Not Booked">

# [5] pry(main)> zora = Barber.last
# => #<Barber:0x00007f8e55af6d48 id: 10, name: "Zora", experience: 16>


# [6] pry(main)> wandamble.view_barbers


# [7] pry(main)> wandamble.make_appointment("Booked")
# => #<Appointment:0x00007f8e58928630 id: 11, status: "Booked">
# [8] pry(main)> Appointment.all

# [9] pry(main)> exit





end 
