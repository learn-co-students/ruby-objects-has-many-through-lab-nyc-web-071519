class Appointment

    attr_accessor :date, :doctor, :patient

    @@all = []

    def initialize (date, patient, doctor)
        @doctor = doctor
        @patient = patient
        @date = date
        Appointment.all << self
    end

    def self.all
        @@all
    end

    


end