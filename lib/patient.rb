class Patient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Patient.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appt_inst|
            appt_inst.patient == self
        end
    end

    def doctors
        appointments.map do |appt_inst|
            appt_inst.doctor
        end
    end
end