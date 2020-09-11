
class CLI

    def welcome_sign_up_in
        prompt = TTY::Prompt.new
        puts "Yurrr 😎"
        puts "Welcome to the Barber Finder App!"
        sleep(0.7)   # creates a pause 
        puts "Create your username and password homie!"

        puts "Please create your Username and Password"
        username = prompt.ask("Username: ",  required: true)
        password = prompt.mask("Password: ", required: true)      


        prompt.select("Yeee Boi! Select Ya Barber!", %w(a b c))


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
        
        
                                                            



    
    end 


    
end   







    # def welcome

    #     puts puts puts puts 
    #     puts "Yurrr"
    #     puts "Welcome to the Barber Finder App!"
    #     puts "What's Your Name Homie?"


    #     name = gets.chomp
    #     puts "Ight #{name}! We need to get you finessed ASAP myG!"
    


