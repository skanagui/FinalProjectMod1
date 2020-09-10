class User < ActiveRecord::Base 
      #has_many :appointments


    def user_name 
        self.name
        #  puts "Yo! My name is #{self.name}!"
    end


end 
