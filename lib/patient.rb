class Patient

    attr_accessor :name

    @@all=[]
    
    def initialize(name)
        @name = name
        @@all<<self
        
    end

    #class methods::::

    def self.all
        @@all
        
    end
#:::::::::::

def new_appointment(date, doctor)

Appointment.new(self, date, doctor)    

end


def appointments
    Appointment.all.select do |appointments_instance|
        appointments_instance.patient == self
    end
    
end



def doctors
appointments.map do |appointment|
    appointment.date
end
    
end






end