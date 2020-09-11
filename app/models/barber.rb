class Barber < ActiveRecord::Base 
    
    has_many :appointments
    has_many :users, through: :appointments


    def self.barber_dot_all
        Barber.all
    end
    ####
        def self.view_all_barbers
                puts  "|  GETTING ALL BARBER NAMES  |"
                puts  "|----------------------------|"

            barber_dot_all.each do |each_barb|

                puts "|  BARBER: #{each_barb.name}  |"

            end

        end
    ####

end 

