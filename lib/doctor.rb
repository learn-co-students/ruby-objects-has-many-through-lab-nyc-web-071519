class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Doctor.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appt_inst|
            appt_inst.doctor == self
        end
    end

    def patients
        appointments.map do |appt_inst|
            appt_inst.patient
        end
    end
end