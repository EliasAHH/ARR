class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :doctors, through: :appointments
end 

## Appointment.create(date:"Feb 20", patient_id: 1 , doctor_id:1 )

# > p1.doctors << d1 

#.new and .build the SAME YOU NEED TO USE .save 