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
    Appointment.new(date, patient, doctor)
  end

end
