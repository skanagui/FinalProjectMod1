
class CLI
    def welcome_sign_up_in
        prompt = TTY::Prompt.new


        # User.destroy_all


        # -T- #
        #### LOADING PREV USERS
        puts puts 
        puts User.all
        all_users = User.all
        seyi = all_users[0]
        sam  = all_users[1]
        puts
        puts 
        puts seyi.name
        puts seyi.id
        puts "----"
        puts sam.name
        puts sam.id
        puts "----"
        # puts User.seyi

        puts
        puts Barber.all
        puts


        list_o_appos = Appointment.all.filter{ |appo| 
        
                        appo.user_id == seyi.id 

                        # puts appo.status
                        # puts appo.user_id
                        # puts appo.barber_id

                    } # ***
        puts list_o_appos[0].user_id

        seyi.make_appointment("Booked", seyi.id, 5)
        puts seyi.view_appointments


        
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
        chosen_barb = prompt.select("Yeee Boi! Select Ya Barber!", (list_o_barbs))  

        puts chosen_barb
        if(chosen_barb == "Jamal")
            puts "appointment with #{chosen_barb}"
        
        end

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
    


