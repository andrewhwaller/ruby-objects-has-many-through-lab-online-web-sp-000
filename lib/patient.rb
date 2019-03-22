class Patient
  attr_accessor :name, :doctor

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @doctor = doctor
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient = self}

end
