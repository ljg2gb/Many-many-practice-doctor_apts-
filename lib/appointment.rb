class Appointment
    attr_reader  :date, :rating, :doctor, :patient
    
    @@all = []

    def initialize(date, rating, doctor, patient)
        @date = date
        @rating = rating
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def self.all
        @@all
    end

end