class Doctor
  attr_accessor :name, :patients

  @@all = []

  def initialize(name)
    @name = name
    @patients = patients
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient)
  end

  

end
