class Doctor
    attr_accessor :name
    @@all=[]
    def initialize(name)
        @name = name 

        @@all<<self
        
    end

#class methods 

    def self.all
        @@all
        
    end


    #::::::::::::::::::::::::


    def new_appointment(date, patient)

         Appointment.new(date, patient, self)
        
     end



     def appointments
        Appointment.all.select do |appointment_instance|
            appointment_instance.doctor == self
        end
         
     end


      def patients
         appointments.map do |app|
            app.patient
         end
         
      end





end