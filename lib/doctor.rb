

Skip to content
Using Gmail with screen readers

Conversations
1.18 GB (7%) of 15 GB used
Manage
Terms · Privacy · Programme Policies
Last account activity: 18 minutes ago
Details


class Doctor
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
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def new_appointment(patient,date)
        Appointment.new(date,patient,self)
    end

    def patients
        appointments.collect do |appointment|
            appointment.patient
        end
    end
end
doctor.rb
Displaying doctor.rb.