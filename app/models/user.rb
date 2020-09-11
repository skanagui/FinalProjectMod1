
# require_relative 'appointment.rb'
# require 'tty-prompt'

class User < ActiveRecord::Base 
    has_many :appointments
    has_many :barbers, through: :appointments 




    # def self.save_user(id_to_save, user_to_save)
    #     user_to_save = User.last
    # end
    # def self.login
    #     prompt = TTY::Prompt.new
        
        # puts "Please enter your Username and Password"
        # username = prompt.ask("Username: ",  required: true)
        # password = prompt.mask("Password: ", required: true)                           
                            
        
        # User.create(name: username)
        # active_user = username
        # active_user = User.last


        # User.find_by(name: user_to_find)
    
        # active_user = User.create(name: username)
        # active_user

        # active_user.
        # save_user(active_user.id, active_user)
    # end
    # def giveme_user(user_to_find)
    #     User.find_by(name: user_to_find)
    # end 




    def self.user_dot_all
        User.all
    end
    ####
        def self.view_all_users
                puts  "|  GETTING ALL USER NAMES  |"
                puts  "|--------------------------|"

            user_dot_all.each do |each_users|

                puts "|  User: #{each_users.name}  |"

            end

        end
    ####




    def view_barbers
        Barber.all
    end
    #  prompt.select("Great! Select Your Barber!", %w(a b c))

    def make_appointment(stat, u_id, b_id) # *** u_id >> ***.id  ;  u_id=self.id   XX- self.id
        next_appo = Appointment.last.id + 1
        #                         Increment
        making_this_appo = "appo" + next_appo.to_s
        #                                   Concat
        making_this_appo = Appointment.create(status: "Booked", user_id: u_id, barber_id: b_id)
        # making_this_appo
    end
    def view_appointments  #  Pretty Much (==) @user.appointments...
        Appointment.all.filter{ |appo| # puts "bagabaga"
        
        appo.user_id == self.id 

        }
    end
    ####
        def view_appointments_asthetic
            view_appointments.each do |user_appo|

                puts "|  Status: #{user_appo.status}  | User: #{user_appo.user_id}  |  Barber: #{user_appo.barber_id}  |"

            end

        end
    ####
    def change_appointment
        prompt = TTY::Prompt.new
        
        ##  If :: (User) Has More Than 1 Appointment  ##
        if(self.view_appointments.length > 1)
          puts puts
          puts "Ight-Bet! Here are your Appointments:
          "
               self.view_appointments
          puts puts 
          puts "Which Appointment Would You Like to Change"

          appo_to_chng = prompt.ask("Appointment#? : ",  required: true)

            #   case   # ***
           # app_chng = Appointment.find_by(user_id: self.id) 

        else
            stat_cas = self.appointments[0].status

            case stat_cas

            when "Booked"
                 self.appointments[0].status = "Unbooked"
            when "Unbooked"
                 self.appointments[0].status = "Booked"
            end 
        end

    end
    def cancel_appointment  
        prompt = TTY::Prompt.new
        
        ##  If :: (User) Has More Than 1 Appointment  ##
        if(self.view_appointments.length > 1)                               # ***
          puts puts
          puts "Ight-Bet! Here are your Appointments:
          "
               self.view_appointments
          puts puts 
          puts "Which Appointment You Tryna Delete MyG"

          appo_to_chng = prompt.ask("Appointment#? : ",  required: true)

            #   case   # ***
           # app_chng = Appointment.find_by(user_id: self.id) 

        else
            self.appointments[0].delete_all
        end

    end
    #Event.all.select{ |event| event.destroy if event.name == cancel_this }
    def cancel_all_appointments 
        prompt = TTY::Prompt.new

        puts puts
        puts "You sure you wanna clip everybody?"
        puts puts 
        puts "Bet👏 Say No More Homie👏"

        self.appointments.delete_all
        puts "BOOM👏 Done. Stay Crusty Fam... 💰😅💵"

    end
    # delete first / last 



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
