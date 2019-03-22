class Doctor
  attr_accessor :name, :patients

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @patients = patients
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor = self}
  end

  def patients
    Patient.all.select {|appointment| patient.doctor = self}
  end
end
