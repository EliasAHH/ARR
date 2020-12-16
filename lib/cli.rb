class CLI
    def welcome
        puts "Welcome, please enter your name"
        input = gets.chomp.capitalize
        @p1 = Patient.find_or_create_by(name:input)
        ask_for_doctor
    end 

    def ask_for_doctor
        puts "Which Doctor are you looking to get an appointment with?"
        input = gets.chomp.capitalize
        @d1 = Doctor.find_or_create_by(name:input)
        ask_for_appointment 
    end 

    def ask_for_appointment
        puts "What date would you like your appointment"
        input = gets.chomp
        @a = @p1.appointments.build(date:input, doctor_id: @d1.id)
        @a.save
        display_info
    end 

    def display_info
        @p1.doctors.each do |d| 
            puts d.name
        end 
    end 
end