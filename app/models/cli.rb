#require 'tty'


class CLI

    sleep(2)

    def welcome_sign_up_in
        

        puts puts puts puts 
        a = Artii::Base.new :font => 'slant'
        puts a.asciify("YUURRR!!")

            sleep(2)

        prompt = TTY::Prompt.new


        # User.destroy_all




####################


        ####  Users

        # puts puts 
        # User.view_all_users


        all_users = User.all

        seyi = all_users[0]
        sam  = all_users[1]

        ########




        ####  Barbers

        # puts puts
        # Barber.view_all_barbers


        all_barbers = Barber.all

        jamal    = all_barbers[0] 
        jeronimo = all_barbers[1] 
        sidney   = all_barbers[2] 
        wendy    = all_barbers[3] 
        zora     = all_barbers[4]      
        
        ####


####################


        # XX-
        # puts User.seyi

      


        list_o_appos = Appointment.all.filter{ |appo| 
        
                        appo.user_id == seyi.id 

                        # puts appo.status
                        # puts appo.user_id
                        # puts appo.barber_id

                    } # ***
        # puts list_o_appos[0].user_id

        seyi.make_appointment("Booked", seyi.id, 5)
        puts 


        
        #binding.pry




        #### BEGIN ***

        puts "Yurrr 😎"
        puts "Welcome to the Barber Finder App!"
        sleep(0.7)   # creates a pause 
        puts "Create your username and password homie!"

        puts "Please create your Username and Password"
        username = prompt.ask("Username: ",  required: true)
        password = prompt.mask("Password: ", required: true) 
        puts
        puts username
        puts # -T- #
        

        active_user = User.create(name: username)
        puts "===="
        puts active_user
        puts active_user.name
        puts "===="
        # active_user = username
        # active_user = User.last

        # *** create USER!!!!
        # !!!!
        # !!!!

        User.all


        list_o_barbs = Barber.all.map{ |barb| barb.name }
        # ***
        chosen_barb = prompt.select("Yeee Boi! Select Ya Barber!", (list_o_barbs))
    

        # -T- #
        puts chosen_barb
        
        if(chosen_barb == "Jamal")
          # "Jamal👴🏻" || "Jaronimo👨🏿‍🦳" || "Sidney👧🏽" || "Wendy👩🏿‍🦳" || "Zora👩🏽‍🦰")

            puts "You have an appointment booked with #{chosen_barb} for a fresh cut!"
        end 

        

        # active_user = seyi
            # seyi.EVERYTHING
            # sam.EVERYTHING
        opt = prompt.select("Welcome back yo! Whatchu wanna do?", %w(View_Appointments Change_Appointment Cancel_Appointment Logout))
            
            case opt  # *** XX- (ALL)(seyi)s

            when "View_Appointments"
                 seyi.view_appointments_asthetic
            when "Change_Appointment"
                 sam.change_appointment                
                #  seyi.change_appointment
            when "Cancel_Appointment"
                 sam.cancel_all_appointments 

            when "Logout"
                 puts puts puts puts 
                 puts a.asciify("STAY FLOSSY !!!") 

            end 
            
            
            #if view_appointments == true 
            #puts "You are booked "#{view_appointments}"
            # elsif Change_Appointment == true
            #puts "Give us a call and we'll show you availabilities 555-555-5555"
            # if Cancel_Appointment == true 
            # if Log out == true 


            #log back in with username and password name 

        # you can check appointments 
        # options to view all/change(appointment updated)/cancel status(if cancel then stay crusty fam)











    end             




end 


#



                        #choices = %w(vodka beer wine whisky bourbon)
                        #prompt.multi_select("Select drinks?", choices)
                        # =>
                        #
                        # Select drinks? (Use ↑/↓ arrow keys, press Space to select and Enter to finish)"
                        # ‣ ⬡ vodka
                        #   ⬡ beer
                        #   ⬡ wine
                        #   ⬡ whisky
                        #   ⬡ bourbon
        
        
                                            

    # def welcome

    #     puts puts puts puts 
    #     puts "Yurrr"
    #     puts "Welcome to the Barber Finder App!"
    #     puts "What's Your Name Homie?"


    #     name = gets.chomp
    #     puts "Ight #{name}! We need to get you finessed ASAP myG!"
    


