class Patient
    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |apt|
            apt.patient == self
        end
    end

    def doctors
        docs = appointments.map do |apt|
            apt.doctor.name
        end
        docs.uniq
    end


end